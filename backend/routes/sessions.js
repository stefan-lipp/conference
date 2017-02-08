const jwtGuard = require('../middleware/jwt.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const ConferenceEvent = DataBase.sequelize.models.event;
const Institution = DataBase.sequelize.models.institution;
const Session = DataBase.sequelize.models.session;
const Paper = DataBase.sequelize.models.paper;
const PaperKeyword = DataBase.sequelize.models.paperkeyword;
const Favorite = DataBase.sequelize.models.favorite;
const Author = DataBase.sequelize.models.author;
const Person = DataBase.sequelize.models.person;
const Speaker = DataBase.sequelize.models.speaker;

/** Session routes */
function sessionSubroutes (app) {

  // `/sessions/`
  app.subroute('/', (app) => {

    // GET retrieve list of all sessions
    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Session.findAll({
        include: [
          { model: ConferenceEvent, include: [
            { model: Paper, include: [
              { model: Author, required: false, include: [
                { model: Person, required: false },
              ] },
            ] },
            { model: Favorite, where: { personId: personId }, required: false },
          ] },
        ],
      }).then((sessions) => {
        res.json(sessions.map(TOMapper.toSessionTO));
      }).catch(err => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }

        res.status(500).json({
          error: true,
          success: false,
          message: 'Unknown error',
        });
      });
    });

  });

  app.subroute('/favorites', (app) => {
    app.use(jwtGuard);

    // GET retrieve list of all favorite sessions
    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Session.findAll({
        include: [
          { model: ConferenceEvent, include: [
            { model: Paper },
            { model: Favorite, where: { personId: personId }, required: true },
          ] },
        ],
      }).then((sessions) => {
        res.json(sessions.map(TOMapper.toSessionTO));
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
      });
    });

  });

  // `/sessions/:sessionId`
  app.subroute('/:sessionId', (app) => {
    // GET retrieve single session
    app.get((req, res) => {
      const sessionId = req.params.sessionId;
      const personId = (req.decoded ? req.decoded.personId : null);

      Session.findById(sessionId, {
        include: [
          { model: ConferenceEvent, include: [
            { model: Paper, include: [
              { model: Author, required: false, include: [
                { model: Person, required: false },
              ] },
              { model: PaperKeyword, as: 'keywords', required: false },
            ] },
            { model: Favorite, where: { personId: personId }, required: false },
            { model: Speaker, required: false , include: [
              { model: Person, required: false, include: [
                { model: Institution, required: false },
              ] }   
            ] },
          ] },
        ],
        order: [ [ 'startTime', 'ASC' ] ],
      }).then(session => {
        res.json(TOMapper.toSessionTO(session));
      }).catch(err => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown session',
        });
      });
    });
  });

}

module.exports = sessionSubroutes;