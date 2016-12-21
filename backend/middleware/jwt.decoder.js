const jwt = require('jsonwebtoken');
const config = require('../config');
const JWT_ERRORS = require('./jwt.errors');

/** Middleware function to decode JWT token data */
function decodeJwt (req, res, next) {

  // Token either in request body, query parameter or x-access-token header
  const token = req.body.token || req.query.token || req.headers['x-access-token'];

  if (token) {
    jwt.verify(token, config.jwtSecret, (err, decoded) => {
      if (err) {
        // Invalid token? Error
        return res.status(401).json({
          error: true,
          success: false,
          type: JWT_ERRORS.INVALID_TOKEN,
          message: 'Invalid token.',
        });
      } else {
        // All good
        req.decoded = decoded;
        return next();
      }
    });

  } else {
    // No token? Move on
    return next();
  }
}

module.exports = decodeJwt;
