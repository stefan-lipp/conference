const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Author = DataBase.sequelize.models.author;
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const PaperKeyword = DataBase.sequelize.models.paperkeyword;
const Person = DataBase.sequelize.models.person;
const Speaker = DataBase.sequelize.models.speaker;

/** Subroutes under / for persons */
function personSubroutes (app) {

  app.subroute('/persons', (app) => {

    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Person.findById(personId)
        .then(person => {
          res.json(TOMapper.toPersonTO(person));
        })
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown person',
        }));
    });
  });

  // `/persons/:personId`
  app.subroute('/persons/:personId', (app) => {

    // GET retrieve single person
    app.get((req, res) => {
      const personId = req.params.personId;

      Person.findById(personId)
        .then(person => {
          res.json(TOMapper.toPersonTO(person));
        })
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown person',
        }));
    });
  });

  app.subroute('/speaker/:personId/events', (app) => {
    // GET retrieve list of all events
    app.get((req, res) => {
      const personId = (req.params && req.params.personId);

      if (!personId) {
        res.status(400).send();
        return;
      }

      Event.findAll({
        include: [
          { model: Paper }, // title
          { model: Speaker, where: { personid: personId }, required: true, include: [
             { model: Person, required: true },
          ] },
        ],
      }).then((events) => {
        res.json(events.map(TOMapper.toEventTO));
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
      });
    });
  });

  app.subroute('/author/:personId/papers', (app) => {
    // GET retrieve list of all papers the person is author
    app.get((req, res) => {
      const personId = (req.params && req.params.personId);

      if (!personId) {
        res.status(400).send();
        return;
      }

      Paper.findAll({
        include: [
          { association: Paper.hasMany(Author, { foreignKey: 'paperid', as: 'filter' }),
            where: { personid: personId },
            required: true,
          },
          { model: Author, required: true, include: [
             { model: Person, required: true },
          ] },
          { model: PaperKeyword, as: 'keywords', required: false },
        ],
      }).then((papers) => {
        res.json(papers.map(TOMapper.toPaperTO));
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
      });
    });
  });

}
module.exports = personSubroutes;
