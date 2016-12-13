const express = require('express');
const router = express.Router();
const config = require('../config');

const bcrypt = require('bcrypt-nodejs');
const jwt = require('jsonwebtoken');
const subroute = require('express-subroute');
const uuid = require('uuid');

const DataBase = require('../model/index');
const UserData = DataBase.sequelize.models.userdata;
const Person = DataBase.sequelize.models.person;
const Admin = DataBase.sequelize.models.admin;

/**
 * Validates a password
 *
 * @param password The password to validate
 * @param passwordConfirmation Password confirmation
 * @return true if password is valid, false otherwise
 */
function validatePassword (password, passwordConfirmation) {
  return (password === passwordConfirmation);
}

function authSubroutes (app) {
  app.subroute('/login', (app) => {
    app.post((req, res) => {
      const credentials = {
        email: req.body.email,
        password: req.body.password,
      };

      // Find account with admin information
      UserData.findOne({
        include: [
          { model: Person, where: { email: credentials.email } },
          { model: Admin }
        ]
      }).then(userInstance => {
        if (userInstance) {
          const passwordHash = userInstance.password;

          // Check password
          bcrypt.compare(credentials.password, passwordHash, (err, valid) => {
            if (!err && valid) {
              // All good, create token
              const token = jwt.sign(
                {
                  'isAdmin': Boolean(userInstance.admin),
                  'personid': userInstance.personid,
                },
                config.jwtSecret,
                {
                  expiresIn: config.jwtExpirationTime,
                }
              );

              // Update user
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
                    .status(401)
                    .json({
                      error: true,
                      success: false,
                      message: 'Unknown username',
                    });
                });

            } else {
              // Password is invalid
              res
                .status(401)
                .json({
                  error: true,
                  success: false,
                  message: 'Incorrect password',
                });
            }
          });

        } else {
          // Could not find user with provided email
          res
            .status(401)
            .json({
              error: true,
              success: false,
              message: 'Unknown username',
            });
        }
      }).catch(err => {
        // DB Error
        // TODO verify this does not occur when findOne does not find a value
        if (process.env.ENV === 'development') {
          console.error(err);
        }
        res
          .status(500)
          .json({
            error: true,
            success: false,
            message: 'An error occurred',
          });
      });
    });
  });

  app.subroute('/register', (app) => {
    app.post((req, res) => {
      const registrationData = {
        email: req.body.email,
        name: req.body.name,
        password: req.body.password,
        passwordConfirmation: req.body.password_confirmation,
      };
      // Validate password
      // TODO validate email and name
      if (validatePassword(registrationData.password, registrationData.passwordConfirmation)) {
        // Find or create entry in person table
        Person.findOrCreate({
          where: { email: registrationData.email },
          defaults: {
            id: uuid.v4(),
            name: registrationData.name,
            institutionid: null,
            email: registrationData.email,
            details: '',
          },
        }).spread((personInstance, created) => {
          // Person found
          // Create password hash
          bcrypt.hash(registrationData.password, null, null, (err, hash) => {
            if (err) {
              // Failed password hash
              res
                .status(500)
                .json({
                  error: true,
                  success: false,
                  message: 'Could not create account',
                });
            } else {
              // Hash created, create token
              const token = jwt.sign({ 'isAdmin': false }, config.jwtSecret, {
                expiresIn: config.jwtExpirationTime,
              });

              // Create userdata, update and save
              UserData.create({
                personid: personInstance.id,
                password: hash,
                token: token,
              }).then((instance) => {
                // Userdata created
                res.json({ token: instance.token });
              }).catch((err) => {
                // Error on creation of user data
                res
                  .status(400)
                  .json({
                    error: true,
                    success: false,
                    message: 'Account exists',
                  });
              });
            }
          });

        }).catch((err) => {
          // Could neither find nor create person
          res
            .status(500)
            .json({
              error: true,
              success: false,
              message: 'Could not create account',
            });
        });
      } else {
        // Validation error
        res
          .status(400)
          .json({
            error: true,
            success: false,
            message: 'Validation error',
          });
      }
    });
  });
}

module.exports = authSubroutes;
