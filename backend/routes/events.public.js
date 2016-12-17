
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
      const personid = (req.decoded ? req.decoded.personid : null);

      Event.findAll({
        include: [
          { model: Paper },
          { model: Favorite, where: { personid: personid }, required: false },
        ],
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

  app.subroute('/:eventid/favorite', (app) => {
    app.post(function(req, res, next) {
      const eventid = (req.params ? req.params.eventid : null);
      const personid = (req.decoded ? req.decoded.personid: null);
      if (personid == null) {
        res.status(401).send();
        return;
      }
      if (eventid == null) {
        res.status(400).send();
        return;
      }
      Favorite.create({ personid: personid, eventid: eventid}
      ).then((fav) => {
        res.status(201).send();
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.log(err);
        }
         res.status(422).send();
      });
    });
    app.delete(function(req, res, next) {
      const eventid = (req.params ? req.params.eventid : null);
      const personid = (req.decoded ? req.decoded.personid : null);
      if (personid == null) {
        res.status(401).send();
        return;
      }
      if (eventid == null) {
        res.status(400).send();
        return;
      }
      Favorite.destroy({ where: {personid: personid, eventid: eventid} }
      ).then((fav) => {
        res.status(204).send();
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.log(err);
        }
        res.status(410).send();
      });
    });
  });
}

module.exports = eventSubroutes;
