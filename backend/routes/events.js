const jwtGuard = require('../middleware/jwt.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const Favorite = DataBase.sequelize.models.favorite;
const Author = DataBase.sequelize.models.author;
const Person = DataBase.sequelize.models.person;
const Room = DataBase.sequelize.models.room;
const Session = DataBase.sequelize.models.session;
const Speaker = DataBase.sequelize.models.speaker;
const PaperKeyword = DataBase.sequelize.models.paperkeyword;
const Institution = DataBase.sequelize.models.institution;
const Vote = DataBase.sequelize.models.vote;

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
            { model: PaperKeyword, as: 'keywords', required: false },
          ] },
          { model: Favorite, where: { personId: personId }, required: false },
          { model: Vote, where: { personId: personId }, required: false },
          { model: Room, required: false },
          { model: Session, required: false },
          { model: Speaker, required: false, include: [
            { model: Person, required: false, include: [
              { model: Institution, required: false },
            ] },
          ] },
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
          { model: Paper, include: [
            { model: PaperKeyword, as: 'keywords', required: false },
          ] },
          { model: Room, required: false },
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

  app.subroute('/votes', (app) => {

    // GET retrieve list of all events
    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Event.findAll({
        include: [
          { model: Paper, include: [
            { model: PaperKeyword, as: 'keywords', required: false },
          ] },
          { model: Favorite, where: { personId: personId }, required: false },
          { model: Vote, where: { personId: personId }, required: false },
        ],
        order: [ [ DataBase.sequelize.literal(
            '(SELECT count(*) FROM vote WHERE vote.eventid=event.id)'
          ), 'DESC' ] ],
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

    app.use(jwtGuard);
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

        Vote.create({ personId: personId, eventId: eventId })
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

        Vote.destroy({ where: { personId: personId, eventId: eventId } })
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
      const eventId = parseInt(req.params.eventId, 10);
      const personId = (req.decoded ? req.decoded.personId : null);

      Event.findById(eventId, {
        include: [
          { model: Paper, include: [
            { model: Author, required: false, include: [
               { model: Person, required: false },
            ] },
            { model: PaperKeyword, as: 'keywords', required: false },
          ] },
          { model: Favorite, where: { personId: personId }, required: false },
          { model: Vote, where: { personId: personId }, required: false },
          { model: Room, required: false },
          { model: Speaker, required: false, include: [
            { model: Person, required: false, include: [
              { model: Institution, required: false },
            ] },
          ] },
        ],
      }).then(event => {
        res.json(TOMapper.toEventTO(event));
      }).catch(() => res.status(404).json({
        error: true,
        success: false,
        message: 'Unknown event',
      }));
    });
  });

}

module.exports = eventSubroutes;
