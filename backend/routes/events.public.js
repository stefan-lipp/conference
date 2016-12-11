
const express = require('express');
const router = express.Router();

const TOMapper = require('../util/transportObjectMapper');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const Favorite = DataBase.sequelize.models.favorite;

function eventSubroutes (app) {

  app.subroute('/', (app) => {

    app.get(function(req, res, next) {
      const personid = (req.decoded ? req.decoded.personid : null);

      Event.findAll({
        include: [
          { model: Paper },
          { model: Favorite, where: { personid: personid }, required: false },
        ]
      }).then((events) => {
        res.json(events.map(TOMapper.toEventTO));
      });
    });

  });
}

module.exports = eventSubroutes;
