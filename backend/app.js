const express = require('express');
const path = require('path');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const subroute = require('express-subroute');

const jwtGuard = require('./middleware/jwt.guard');
const jwtDecoder = require('./middleware/jwt.decoder');

const index = require('./routes/index');
const auth = require('./routes/auth');
const eventsPublic = require('./routes/events.public');

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

  app.subroute('/api/auth', auth);

  app.subroute('/api/events', eventsPublic);
  app.use(jwtGuard);
  app.subroute('/api', index);

  // catch 404 and forward to error handler
  app.use((req, res, next) => {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
  });

  // error handler
  app.use((err, req, res, next) => {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = (req.app.get('env') === 'development' ? err : { });

    // render the error page
    res.status(err.status || 500);
    res.json({
      error: err,
    });
  });

});

module.exports = app;
