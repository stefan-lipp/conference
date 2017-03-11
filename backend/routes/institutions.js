const uuid = require('uuid');
const jwtGuard = require('../middleware/jwt.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');
const escape = require('../util/escape');

const DataBase = require('../model/index');
const Institution = DataBase.sequelize.models.institution;

/** Subroutes under / for institutinos */
function institutionSubroutes (app) {

  app.subroute('/institutions', (app) => {

    app.get((req, res) => {

      Institution.findAll({
        order: [ ['name', 'ASC'] ,]
      })
        .then(institutions => {
          res.json(institutions.map(TOMapper.toInstitutionTO));
        })
        .catch((err) => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown institution',
        }));
    });

    app.use(jwtGuard);
    app.post((req, res) => {
      const personId = (req.decoded ? req.decoded.personId : null);
      
      if (!personId) {
        res.status(401).send();
        return;
      }

      console.log(req.body);
      const institution = {
        id: uuid.v4(),
        name: escape(req.body.name)+"",
        url: escape(req.body.url)+"",
      }

      if (!institution.name || !institution.url
          || institution.name.length > 300
          || institution.name.length < 3
          || institution.url < 5
          || institution.url > 255) {
        res.status(400).send();
        return;
      }
          
      Institution.create(institution)
        .then(() => res.status(201).send())
        .catch(() => res.status(404).json({
          error: true,
          success: false,
          message: 'Unknown institution',
        }));
    });
  });

}
module.exports = institutionSubroutes;
