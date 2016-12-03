const express = require('express');
const router = express.Router();
const config = require('../config');
const jwt = require('jsonwebtoken');
const subroute = require('express-subroute');

function authSubroutes (app) {
  app.subroute('/login', (app) => {
    app.post((req, res) => {
      console.log(JSON.stringify(config));
      const token = jwt.sign({ 'isAdmin': false }, config.jwtSecret, {
        expiresIn: config.jwtExpirationTime,
      });
      console.log(token);
      res
        .status(200)
        .json({
            token: token,
        });
    });
  });
}

module.exports = authSubroutes;
