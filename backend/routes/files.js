const path = require('path');
const multer = require('multer');

const Errors = require('../util/errors');
const DataBase = require('../model/index');
const Author = DataBase.sequelize.models.author;
const Event = DataBase.sequelize.models.event;
const EventResource = DataBase.sequelize.models.eventressource;
const Paper = DataBase.sequelize.models.paper;
const Speaker = DataBase.sequelize.models.speaker;

const EVENT_FILES_BASE_PATH = path.join(__dirname, '..', 'uploads', 'events');
// Max. 10 MB
const MAX_FILE_SIZE = 10000000;

/**
 * Handles/stores files transmitted
 */
function uploadEventResource (req, res) {
  const eventId = (req.params && req.params.eventId);
  if (!eventId) {
    return res.status(400).json(new Errors.BadRequest());
  }

  Event.findById(eventId, {
    include: [
      { model: Speaker },
      { model: Paper, include: [ { model: Author } ] },
    ],
  })
    .then(event => {

      const authorizedPersonnel = [ ]
        .concat(...(event.paper && event.paper.authors.map(a => a.personId)))
        .concat(...event.speakers.map(s => s.personId));
      if (!req.decoded) {
        return res.status(401).json(new Errors.UnauthorizedError());
      } else if (!req.decoded.isAdmin && !authorizedPersonnel.includes(req.decoded.personId)) {
        return res.status(403).json(new Errors.Forbidden());
      }

      EventResource.findOrInitialize({
        where: { eventid: eventId },
      }).spread((instance) => {
        const dir = path.join(EVENT_FILES_BASE_PATH, eventId);
        const fileName = `slides_${eventId}.pdf`;

        const eventFileStorage = multer.diskStorage({
          destination: dir,
          filename: (req, file, callback) =>
            callback(null, fileName),
        });

        const upload = multer({
          storage: eventFileStorage,
          fileFilter: (req, file, callback) => {
            const isPdf = (file.mimetype === 'application/pdf');
            if (!isPdf) {
              return callback(new Errors.InvalidFileFormatError(), false);
            }

            callback(null, true);
          },
          limits: {
            fieldSize: MAX_FILE_SIZE,
          },
        }).single('uploadFile');

        upload(req, res, (err) => {
          if (err) {
            if (err instanceof Errors.InvalidFileFormatError) {
              return res.status(400).send(err);
            }

            if (err.message === 'Unexpected field') {
              return res.status(400)
                .send(new Errors.InvalidFileFormatError(`Unexpected file in ${err.field}`));
            }

            if (process.env.ENV === 'development') {
              console.error(err);
            }
            return res.status(500).send(new Errors.InternalServerError());
          }

          if (!req.file) {
            return res.status(400).send(new Errors.InvalidFileFormatError('No file provided'));
          }

          const fileURL = `/uploads/events/${eventId}/${fileName}`;

          instance.set('url', fileURL);
          instance.save()
            .then(() => res.status(201).json({
              success: true,
              path: fileURL,
            }))
            .catch((err) => {
              if (err) {
                if (process.env.ENV === 'development') {
                  console.error(err);
                }
                return res.status(500).send(new Errors.InternalServerError());
              }
            });

        });
      })
      .catch(err => {
        if (err) {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          return res.status(500).send(new Errors.InternalServerError());
        }
      });

    })
    .catch(err => {
      if (process.env.ENV === 'development') {
        console.error(err);
      }
      res.status(404).json(new Errors.NotFoundError('Unknown Event'));
    });


}

/** File related routes */
function fileRoutes (app) {

  app.subroute('/events/:eventId/slides', (app) => {
    app
      .post(uploadEventResource)
      .put(uploadEventResource);
  });

}

module.exports = fileRoutes;
