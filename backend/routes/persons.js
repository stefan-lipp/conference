const jwtGuard = require('../middleware/jwt.guard');
const jwtAdminGuard = require('../middleware/jwtAdmin.guard');
const bcrypt = require('bcrypt-nodejs');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');
const escape = require('../util/escape');

const DataBase = require('../model/index');
const Author = DataBase.sequelize.models.author;
const Event = DataBase.sequelize.models.event;
const Paper = DataBase.sequelize.models.paper;
const PaperKeyword = DataBase.sequelize.models.paperkeyword;
const Person = DataBase.sequelize.models.person;
const Speaker = DataBase.sequelize.models.speaker;
const UserData = DataBase.sequelize.models.userdata;
const Institution = DataBase.sequelize.models.institution;

/** Subroutes under / for persons */
function personSubroutes (app) {

  app.subroute('/persons', (app) => {

    app.get((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);

      Person.findById(personId)
        .then(person => {
          res.json(TOMapper.toPersonTO(person));
        })
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown person',
        }));
    });
  });

  // `/persons/:personId`
  app.subroute('/persons/:personId', (app) => {

    // GET retrieve single person
    app.get((req, res) => {
      const personId = req.params.personId;

      Person.findById(personId, {
        include: [
          { model: Institution, required: false },
        ],
      })
        .then(person => {
          res.json(TOMapper.toPersonTO(person));
        })
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown person',
        }));
    });


    app.use(jwtGuard);
    app.use(jwtAdminGuard);

    app.put((req, res) => {
      const personId = req.params.personId;
      const userId = (req.decoded ? req.decoded.personId : null);
      if (personId != userId || !req.decoded.isAdmin) {
        res.status(401).send();
        return;
      }

      if (!personId) {
        res.status(400).send();
        return;
      }
      if (req.body.password && req.body.password !== req.body.password_Confirmation) {
        res.status(400).send();
        return;
      }

      Person.findById(personId, {
        include: [
          { model: Institution, required: false },
          { association: Person.belongsTo(UserData, { foreignKey: 'id', as: 'userdata' }),
          },
        ],
      })
        .then(person => {
          if (req.body.name && req.body.name.length > 3 && req.body.name.length < 100) {
            person.name = escape(req.body.name);
          }
          bcrypt.hash(req.body.password, null, null, (err, hash) => {
            if (!err && req.body.password) {
              person.userdata.password=hash;
            }
            person.save()
              .then(() => {
                res.status(200).send();
              })
              .catch((err) => { console.log(err); res.status(404).json({
                error: true,
                success: false,
                message: 'save failed',
              })});
          });
          
        })
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown person',
        }));
      
    });
  });

  app.subroute('/speaker/:personId/events', (app) => {
    // GET retrieve list of all events
    app.get((req, res) => {
      const personId = (req.params && req.params.personId);

      if (!personId) {
        res.status(400).send();
        return;
      }

      Event.findAll({
        include: [
          { model: Paper }, // title
          { model: Speaker, where: { personid: personId }, required: true, include: [
             { model: Person, required: true },
          ] },
        ],
      }).then((events) => {
        res.json(events.map(TOMapper.toEventTO));
      }).catch((err) => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
      });
    });
  });

  app.subroute('/author/:personId/papers', (app) => {
    // GET retrieve list of all papers the person is author
    app.get((req, res) => {
      const personId = (req.params && req.params.personId);

      if (!personId) {
        res.status(400).send();
        return;
      }

      Paper.findAll({
        include: [
          { association: Paper.hasMany(Author, { foreignKey: 'paperid', as: 'filter' }),
            where: { personid: personId },
            required: true,
          },
          { model: Author, required: true, include: [
             { model: Person, required: true },
          ] },
          { model: PaperKeyword, as: 'keywords', required: false },
        ],
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
module.exports = personSubroutes;
