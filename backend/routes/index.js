const express = require('express');
const router = express.Router();

const jwtMiddleware = require('../middleware/jwt.middleware');

function apiSubroutes (app) {

  app.subroute('/', (app) => {

    app.get(jwtMiddleware, function(req, res, next) {
      res.json({
        success: true,
        env: process.env.ENV,
      });
    });

  });
}

module.exports = apiSubroutes;
