const express = require('express');
const path = require('path');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const subroute = require('express-subroute');

const jwtDecoder = require('./middleware/jwt.decoder');

const index = require('./routes/index');
const auth = require('./routes/auth');
const events = require('./routes/events');
const comments = require('./routes/comments');
const persons = require('./routes/persons');
const tracks = require('./routes/tracks');
const rooms = require('./routes/rooms');
const sessions = require('./routes/sessions');

const models = require('./model/index');

const forceSync = process.env.FORCESYNC;

subroute.install();

const app = express();

if (`${forceSync}` === 'true') {
  console.info('Rebuilding database');
}

models.sequelize.sync({ force: forceSync }).then(() => {
  console.info('Model is synced');

  app.use(logger('dev'));

  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({ extended: false }));
  app.use(cookieParser());
  app.use(jwtDecoder);

  app.use('/doc', express.static(path.join(__dirname, 'doc')));

  app.subroute('/api', index);
  app.subroute('/api/auth', auth);
  app.subroute('/api/comments', comments);
  app.subroute('/api/events', events);
  app.subroute('/api/sessions', sessions);
  app.subroute('/api/rooms', rooms);
  app.subroute('/api/tracks', tracks);
  app.subroute('/api', persons);

  // Catch 404 and forward to error handler
  app.use((req, res, next) => {
    const err = new Error('Not Found');
    err.status = 404;
    next(err);
  });

  // Error handler
  app.use((err, req, res) => {
    if (process.env.ENV === 'development') {
      console.error(err);
    }

    // Set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = (req.app.get('env') === 'development' ? err : { });

    // Render the error page
    res.status(err.status || 500);
    res.json({
      error: err,
    });
  });
});

module.exports = app;
