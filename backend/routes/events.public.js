const express = require('express');
const router = express.Router();

const TOMapper = require('../util/transportObjectMapper');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const Favorite = DataBase.sequelize.models.favorite;

function eventSubroutes (app) {

  // `/events/`
  app.subroute('/', (app) => {

    // GET retrieve list of all events
    app.get((req, res, next) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Event.findAll({
        include: [
          { model: Paper },
          { model: Favorite, where: { personid: personId }, required: false },
        ]
      }).then((events) => {
        res.json(events.map(TOMapper.toEventTO));
      }).catch(err => res.status(500).json({
        error: true,
        success: false,
        message: 'Unknown error',
      }));
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
        .catch(err => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown event',
        }));
    });
  });

}

module.exports = eventSubroutes;
