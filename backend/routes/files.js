const path = require('path');
const multer = require('multer');

const Errors = require('../util/errors');
const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const EventResource = DataBase.sequelize.models.eventressource;

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

  Event.findById(eventId)
    .then(event => {

      // @TODO Access Control

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

            // @TODO Filter for PDFs only

            callback(null, true);
          },
          limits: {
            fieldSize: MAX_FILE_SIZE,
          },
        }).single('slides');

        upload(req, res, (err) => {
          if (err) {
            if (process.env.ENV === 'development') {
              console.error(err);
            }
            return res.status(500).send(new Errors.InternalServerError());
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
