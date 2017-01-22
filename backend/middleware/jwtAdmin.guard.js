const jwt = require('jsonwebtoken');
const config = require('../config');
const JWT_ERRORS = require('./jwt.errors');

/** Middleware function to guard a route with JWT */
function guardJwt (req, res, next) {
  // Token either in request body, query parameter or x-access-token header
  const token = req.body.token || req.query.token || req.headers['x-access-token'];

  if (token) {
    jwt.verify(token, config.jwtSecret, (err, decoded) => {
      if (err || !decoded.isAdmin) {
        return res.status(403).send({
          error: true,
          success: false,
          type: JWT_ERRORS.UNAUTHORIZED,
          message: 'Unauthorized.',
        });
      }

      return next();
    });

  } else {
    // No token? return an error
    return res.status(403).send({
      error: true,
      success: false,
      type: JWT_ERRORS.UNAUTHORIZED,
      message: 'Unauthorized.',
    });
  }
}

module.exports = guardJwt;
