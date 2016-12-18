const express = require('express');
const router = express.Router();

const TOMapper = require('../util/transportObjectMapper');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const Favorite = DataBase.sequelize.models.favorite;

function favorsSubroutes (app) {

  // `/favor/`
  app.subroute('/', (app) => {

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

module.exports = favorsSubroutes;
