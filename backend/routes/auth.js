const express = require('express');
const router = express.Router();
const config = require('../config');

const bcrypt = require('bcrypt-nodejs');
const jwt = require('jsonwebtoken');
const subroute = require('express-subroute');

const DataBase = require('../model/index');
const UserData = DataBase.sequelize.models.userdata;
const Person = DataBase.sequelize.models.person;
const Admin = DataBase.sequelize.models.admin;

function authSubroutes (app) {
  app.subroute('/login', (app) => {
    app.post((req, res) => {
      const credentials = {
        email: req.body.email,
        password: req.body.password,
      };

      UserData.findOne({
        include: [
          { model: Person, where: { email: credentials.email } },
          { model: Admin }
        ]
      }).then(userInstance => {
          if (userInstance) {
            const passwordHash = userInstance.password;

            bcrypt.compare(credentials.password, passwordHash, (err, valid) => {
              if (!err && valid) {
                const token = jwt.sign({ 'isAdmin': Boolean(userInstance.admin) }, config.jwtSecret, {
                  expiresIn: config.jwtExpirationTime,
                });

                userInstance.token = token;
                userInstance.save()
                  .then(() => {
                    res
                      .status(200)
                      .json({
                          token: token,
                      });
                  })
                  .catch((err) => {
                    if (process.env.ENV === 'development') {
                      console.error(err);
                    }
                    res
                      .status(403)
                      .json({
                        error: true,
                        success: false,
                        message: 'Unknown username',
                      });
                  });

              } else {
                res
                  .status(403)
                  .json({
                    error: true,
                    success: false,
                    message: 'Incorrect password',
                  });
              }
            });

          } else {
            res
              .status(403)
              .json({
                error: true,
                success: false,
                message: 'Unknown username',
              });
          }
        }).catch(err => {
          if (process.env.ENV === 'development') {
            console.error(err);
          }
          res
            .status(403)
            .json({
              error: true,
              success: false,
              message: 'Unknown username',
            });
        });
    });
  });
}

module.exports = authSubroutes;
