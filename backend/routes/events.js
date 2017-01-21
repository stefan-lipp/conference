const jwtGuard = require('../middleware/jwt.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const Favorite = DataBase.sequelize.models.favorite;
const Author = DataBase.sequelize.models.author;
const Person = DataBase.sequelize.models.person;

/** Subroutes under /events */
function eventSubroutes (app) {

  // `/events/`
  app.subroute('/', (app) => {

    // GET retrieve list of all events
    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Event.findAll({
        include: [
          { model: Paper, include: [
            { model: Author, required: false, include: [
               { model: Person, required: false },
            ] },
          ] },
          { model: Favorite, where: { personId: personId }, required: false },
        ],
      })
        .then((events) => {
          res.json(events.map(TOMapper.toEventTO));
        })
        .catch(err => {
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

    // GET retrieve list of all events
    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Event.findAll({
        include: [
          { model: Paper },
          { model: Favorite, where: { personId: personId }, required: true },
        ],
      })
        .then((events) => {
          res.json(events.map(TOMapper.toEventTO));
        })
        .catch((err) => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res.status(500).json(new Errors.InternalServerError());
        });
    });

    app.subroute('/:eventId', (app) => {
      app.post((req, res) => {
        const eventId = (req.params && req.params.eventId);
        const personId = (req.decoded && req.decoded.personId);

        if (!personId) {
          res.status(401).json(new Errors.UnauthorizedError());
          return;
        }

        if (!eventId) {
          // TODO proper error
          res.status(400).send();
          return;
        }

        Favorite.create({ personId: personId, eventId: eventId })
          .then(() => {
            res.status(201).send();
          })
          .catch((err) => {
            if (process.env.ENV === 'development') {
              console.error(err);
            }
            res.status(500).json(new Errors.InternalServerError());
          });
      });

      app.delete((req, res) => {
        const eventId = (req.params && req.params.eventId);
        const personId = (req.decoded && req.decoded.personId);

        if (!personId) {
          res.status(401).json(new Errors.UnauthorizedError());
          return;
        }

        if (!eventId) {
          // TODO proper error
          res.status(400).send();
          return;
        }

        Favorite.destroy({ where: { personId: personId, eventId: eventId } })
          .then(() => {
            res.status(204).send();
          })
          .catch((err) => {
            if (process.env.ENV === 'development') {
              console.error(err);
            }
            res.status(404).json(new Errors.NotFoundError('No such event or not a favorite'));
          });
      });

    });

  });

  // `/events/:eventId`
  app.subroute('/:eventId', (app) => {

    // GET retrieve single event
    app.get((req, res) => {
      const eventId = req.params.eventId;

      Event.findById(eventId)
        .then(event => {
          res.json(TOMapper.toEventTO(event));
        })
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown event',
        }));
    });
  });

}

module.exports = eventSubroutes;
