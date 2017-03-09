const TOMapper = require('../util/transportObjectMapper');
const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Room = DataBase.sequelize.models.room;

/** Subroutes under /rooms */
function roomSubroutes (app) {

  // `/rooms/:roomId`
  app.subroute('/:roomId', (app) => {

    // GET retrieve list of all rooms
    app.get((req, res) => {
      Room.findById(req.params.roomId)
        .then((room) => {
          res.json(TOMapper.toRoomTO(room));
        })
        .catch(err => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res.status(500).json(new Errors.InternalServerError());
        });
    });
  });


}

module.exports = roomSubroutes;
