const express = require('express');
const router = express.Router();

const jwtGuard = require('../middleware/jwt.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const Favorite = DataBase.sequelize.models.favorite;
const Author = DataBase.sequelize.models.author;
const Person = DataBase.sequelize.models.person;

function personSubroutes (app) {

  // `/persons/:personId`
  app.subroute('/:personId', (app) => {

    // GET retrieve single person
    app.get((req, res) => {
      const personId = req.params.personId;

      Person.findById(personId)
        .then(person => {
          res.json(TOMapper.toPersonTO(person));
        })
        .catch(err => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown person',
        }));
    });
  });

}
module.exports = personSubroutes;
