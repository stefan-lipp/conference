const jwtGuard = require('../middleware/jwt.guard');
const jwtAdminGuard = require('../middleware/jwtAdmin.guard');
const moment = require('moment');

const Errors = require('../util/errors');

const DataBase = require('../model/index');
const Event = DataBase.sequelize.models.event;
const Room = DataBase.sequelize.models.room;
const Session = DataBase.sequelize.models.session;
const Track = DataBase.sequelize.models.track;


/** Check if sessions overlap */
function sessionTimeOverlap (a, b) {
  return (
      moment(a.startTime) < moment(b.endTime) &&
      moment(a.endTime) > moment(b.startTime)
  );
}

/** Does the duration fit in the session */
function fitTime (session, duration) {
  return moment(session.startTime).add(duration, 'minute') <= moment(session.endTime);
}

/** Subroutes under /schedules */
function scheduleSubroutes (app) {

  app.use(jwtGuard);
  app.use(jwtAdminGuard);

  // `/schedules`
  app.subroute('/', (app) => {

    // POST to schedule
    app.post((req, res) => {
      if (!(req.decoded && req.decoded.isAdmin)) {
        res.status(401).send();
        return;
      }
      Event.findAll({
        include: [
          { model: Session, required: true },
        ],
      })
      .then(es => {
        if (es.length !== 0) {
          if (process.env.ENV === 'development') {
            console.error('Already scheduled');
          }
          res.status(400).send();
        }
        Session.findAll({
          include: [
            { model: Track, required: true },
          ],
        })
        .then(ss => {
          var sMatrix = [ [ ], [ ] ];
          ss.forEach(s => {
            let inserted = false;
            for (let i = 0; i < sMatrix.length; ++i) {
              if (sMatrix[i].some(x => sessionTimeOverlap(x.session, s))) {
                continue;
              }
              sMatrix[i].push({ session: s });
              inserted = true;
              break;
            }
            if (!inserted) {
              sMatrix.push([ { session: s } ]);
            }
          });
          Room.findAll({
            order: [ [ 'size', 'DESC' ] ],
          })
          .then(rs => {
            for (var i = 0; i < sMatrix.length && i < rs.length; ++i) {
              sMatrix[i].forEach(s => {
                s.room = rs[i];
                return s;
              });
            }
            Event.findAll({
              order: [ [ DataBase.sequelize.literal(
                '(SELECT count(*) FROM favorite WHERE favorite.eventid=event.id)'
              ), 'DESC' ] ],
            })
            .then(es => {
              es.forEach(e => {
                for (let i = 0; i < sMatrix.length; ++i) {
                  for (let j = 0; j < sMatrix[i].length; ++j) {
                    if (e.kind === sMatrix[i][j].session.track.kind &&
                        fitTime(
                          sMatrix[i][j].session, moment.duration(e.duration).minutes() +
                          (sMatrix[i][j].duration ? sMatrix[i][j].duration : 0)
                        )) {
                      e.sessionId = sMatrix[i][j].session.id;
                      e.startTime = moment(sMatrix[i][j].session.startTime).add(
                          sMatrix[i][j].duration ? sMatrix[i][j].duration : 0, 'minute');
                      sMatrix[i][j].duration = (sMatrix[i][j].duration ?
                        sMatrix[i][j].duration : 0) +
                        moment.duration(e.duration).minutes();
                      e.roomid = sMatrix[i][j].room.id;
                      e.save();
                      return e;
                    }
                  }
                }
              });
              res.status(200).json(ss);
            })
            .catch(err => {
              if (process.env.ENV === 'development') {
                console.error('Events', err);
              }
              res.status(500).json(new Errors.InternalServerError());
            });
          })
          .catch(err => {
            if (process.env.ENV === 'development') {
              console.error('Rooms', err);
            }
            res.status(500).json(new Errors.InternalServerError());
          });
        })
        .catch(err => {
          if (process.env.ENV === 'development') {
            console.error('Sessions', err);
          }
          res.status(500).json(new Errors.InternalServerError());
        });
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

module.exports = scheduleSubroutes;
