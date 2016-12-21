const express = require('express');
const router = express.Router();

function apiSubroutes (app) {

  app.subroute('/', (app) => {

    app.get(function(req, res, next) {
      res.json({
        success: true,
        env: process.env.ENV,
      });
    });

  });
}

module.exports = apiSubroutes;
