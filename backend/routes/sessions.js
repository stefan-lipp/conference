const jwtGuard = require('../middleware/jwt.guard');
const moment = require('moment');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');
const escape = require('../util/escape');


const DataBase = require('../model/index');
const ConferenceEvent = DataBase.sequelize.models.event;
const Institution = DataBase.sequelize.models.institution;
const Session = DataBase.sequelize.models.session;
const Paper = DataBase.sequelize.models.paper;
const PaperKeyword = DataBase.sequelize.models.paperkeyword;
const Favorite = DataBase.sequelize.models.favorite;
const Author = DataBase.sequelize.models.author;
const Person = DataBase.sequelize.models.person;
const Room = DataBase.sequelize.models.room;
const Speaker = DataBase.sequelize.models.speaker;
const Track = DataBase.sequelize.models.track;

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
            { model: Room, required: false },
          ] },
        { model: Track, required: true },
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

    app.post((req, res) => {
      if (!(req.decoded && req.decoded.isAdmin)) {
        res.status(401).json(new Errors.UnauthorizedError());
        return;
      }
      const session = {
        name: escape(req.body.name),
        events: [],
        trackid: escape(String(req.body.track.id)),
        startTime: moment(escape(req.body.startTime)).tz('Europe/Berlin'),
        endTime: moment(escape(req.body.endTime)).tz('Europe/Berlin'),
      };
      if (session.startTime >= session.endTime) {
        res.status(400).send();
      }

      Session.create(session, {
        fields: [ 'name', 'events', 'trackid', 'startTime', 'endTime' ],
        include: [
          { model: Track },
        ],
      })
      .then(session => {
        Session.findById(session.id, {
          include: [
            { model: ConferenceEvent, include: [
              { model: Paper, include: [
                { model: Author, required: false, include: [
                  { model: Person, required: false },
                ] },
              ] },
            ] },
            { model: Track, required: true },
          ],
          order: [ [ 'startTime', 'ASC' ] ],
        }).then(session => {
          res.json(TOMapper.toSessionTO(session));
        }).catch(err => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res.status(500).json(new Errors.InternalServerError());
        });
      })
      .catch(err => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
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
        { model: Track, required: true },
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
            { model: Room, required: false },
            { model: Speaker, required: false, include: [
              { model: Person, required: false, include: [
                { model: Institution, required: false },
              ] },
            ] },
          ] },
          { model: Track, required: true },
          { model: Person, required: false, include: [
            { model: Institution, required: false },
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
