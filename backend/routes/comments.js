const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const EventComment = DataBase.sequelize.models.eventcomment;
const Person = DataBase.sequelize.models.person;
const Institution = DataBase.sequelize.models.institution;

/** Subroutes under /events */
function eventSubroutes (app) {

  // `comments/events/:eventId`
  app.subroute('/events/:eventId', (app) => {

    // GET retrieve single event
    app.get((req, res) => {
      const eventId = parseInt(req.params.eventId, 10);

      EventComment.findAll({
        where: { eventId: eventId },
        order: [ 'timestamp' ],
        include: [
          { model: Person, required: true, include: [
            { model: Institution, required: false },
          ] },
        ],
      }).then(comments => {
        res.json(comments.map(TOMapper.toCommentTO));
      }).catch(() => {
        res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown event',
        });
      });
    });

    // GET retrieve single event
    app.post((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);
      const eventId = parseInt(req.params.eventId, 10);

      if (!personId) {
        res.status(401).json(new Errors.UnauthorizedError());
        return;
      }

      if (!eventId) {
        // TODO proper error
        res.status(400).send();
        return;
      }
      req.body.personId = personId;
      req.body.eventId = eventId;

      EventComment.create(req.body, {
        field: [ 'personId', 'eventId', 'comment' ],
      }).then(() => {
        res.send(201);
      }).catch(() => res.status(404).json({
        error: true,
        success: false,
        message: 'Unknown event',
      }));
    });

  });
}

module.exports = eventSubroutes;
