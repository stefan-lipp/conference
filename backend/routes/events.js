const express = require('express');
const router = express.Router();

const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Favorite = DataBase.sequelize.models.favorite;

function eventSubroutes (app) {

  app.subroute('/:eventId/favorite', (app) => {

    app.post((req, res, next) => {
      const eventId = (req.params && req.params.eventId);
      const personId = (req.decoded && req.decoded.personId);

      if (personId == null) {
        res.status(401).json(new Errors.UnauthorizedError());
        return;
      }

      if (eventId == null) {
        res.status(400).send(); // TODO proper error
        return;
      }

      Favorite.create(
        { personid: personId, eventid: eventId }
      ).then((fav) => {
        res.status(201).send();
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
      });
    });

    app.delete((req, res, next) => {
      const eventId = (req.params && req.params.eventId);
      const personId = (req.decoded && req.decoded.personId);

      if (personId == null) {
        res.status(401).json(new Errors.UnauthorizedError());
        return;
      }

      if (eventId == null) {
        res.status(400).send(); // TODO proper error
        return;
      }

      Favorite.destroy(
        { where: { personid: personId, eventid: eventId } }
      ).then((fav) => {
        res.status(204).send();
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(404).json(new Errors.NotFoundError('No such event or not a favorite'));
      });
    });

  });
  
  
  app.subroute('/favorites', (app) => {

    // GET retrieve list of all events
    app.get((req, res, next) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Event.findAll({
        include: [
          { model: Paper },
          { model: Favorite, where: { personid: personId }, required: true },
        ]
      }).then((events) => {
         console.log(events.map(TOMapper.toEventTO)[0]);
         res.json(events.map(TOMapper.toEventTO));
      }).catch(err => res.status(500).json({
        error: true,
        success: false,
        message: 'Unknown error',
      }));
    });

  });
}

module.exports = eventSubroutes;
