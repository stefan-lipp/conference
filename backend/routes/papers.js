const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Author = DataBase.sequelize.models.author;
const Paper = DataBase.sequelize.models.paper;
const PaperKeyword = DataBase.sequelize.models.paperkeyword;
const Person = DataBase.sequelize.models.person;

/** Subroutes under /papers papers required */
function paperSubroutes (app) {

  app.subroute('/papers', (app) => {
    // GET retrieve list of all papers the person is author
    app.get((req, res) => {

      Paper.findAll({
        include: [
          { model: Author, required: false, include: [
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

  app.subroute('/papers/:paperId', (app) => {
    // GET retrieve list of all papers the person is author
    app.get((req, res) => {

      const paperId = (req.params && req.params.paperId);

      if (paperId === null) {
        res.status(400).send();
        return;
      }

      Paper.findById(paperId, {
        include: [
          { model: Author, required: false, include: [
             { model: Person, required: true },
          ] },
          { model: PaperKeyword, as: 'keywords', required: false },
        ],
      }).then(paper => {
        res.json(TOMapper.toPaperTO(paper));
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
