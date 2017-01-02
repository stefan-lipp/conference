const express = require('express');
const router = express.Router();

const jwtGuard = require('../middleware/jwt.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Author = DataBase.sequelize.models.author;
const Paper = DataBase.sequelize.models.paper;
const Person = DataBase.sequelize.models.person;

function paperSubroutes (app) {

  // `/papers/author/:personid`
  app.subroute('/author/:personId', (app) => {
    // GET retrieve list of all events
    app.get((req, res, next) => {
      const personId = (req.params && req.params.personId);

      if (personId == null) {
        res.status(400).send();
        return;
      }

      Paper.findAll({
        include: [
          { association: Paper.hasMany(Author, { foreignKey: 'paperid', as: 'filter' }), where: { personid: personId }, required: true },
          { model: Author, required: true, include: [
             { model: Person, required: true },
          ] },
        ]
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

module.exports = paperSubroutes;
