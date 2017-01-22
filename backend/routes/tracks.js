const jwtGuard = require('../middleware/jwt.guard');
const jwtAdminGuard = require('../middleware/jwtAdmin.guard');

const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Track = DataBase.sequelize.models.track;

/** Subroutes under /tracks */
function trackSubroutes (app) {

  app.use(jwtGuard);
  app.use(jwtAdminGuard);

  // `/tracks/`
  app.subroute('/', (app) => {

    // GET retrieve list of all tracks
    app.get((req, res) => {
      Track.findAll()
        .then((tracks) => {
          res.json(tracks.map(TOMapper.toTrackTO));
        })
        .catch(err => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res.status(500).json(new Errors.InternalServerError());
        });
    });

    app.post((req, res) => {
      const track = {
        name: req.body.name,
        color: req.body.color,
        backgroundColor: req.body.backgroundColor,
        kind: req.body.kind,
      };

      Track.create(track)
        .then(track => {
          res.json(TOMapper.toTrackTO(track));
        })
        .catch(err => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res.status(500).json(new Errors.InternalServerError());
        });
    });

  });

  // `/tracks/:trackId`
  app.subroute('/:trackId', (app) => {

    // GET retrieve single track
    app.get((req, res) => {
      const trackId = req.params.trackId;

      Track.findById(trackId)
        .then(track => {
          res.json(TOMapper.toTrackTO(track));
        })
        .catch(() => res.status(404).json(new Errors.NotFoundError()));
    });

    app.put((req, res) => {
      const trackId = req.params.trackId;

      Track.update(
        {
          id: req.body.id,
          name: req.body.name,
          color: req.body.color,
          backgroundColor: req.body.backgroundColor,
          kind: req.body.kind,
        }, {
          where: { id: trackId },
        }
      )
        .then(() => {
          Track.findById(trackId)
            .then(track => {
              res.json(TOMapper.toTrackTO(track));
            })
            .catch(() => res.status(404).json(new Errors.InternalServerError()));
        })
        .catch(err => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res.status(500).json(new Errors.InternalServerError(err.message || err));
        });
    });

    app.delete((req, res) => {
      const trackId = req.params.trackId;

      Track.destroy({
        where: { id: trackId },
      }).then(() => {
        res.status(204).send();
      }).catch(err => {
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res.status(500).json(new Errors.InternalServerError());
      });
    });
  });

}

module.exports = trackSubroutes;
