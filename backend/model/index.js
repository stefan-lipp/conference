/* eslint no-sync: "off" */

'use strict';

const fs = require('fs');
const path = require('path');
const Sequelize = require('sequelize');
const config = require(path.join(__dirname, '..', 'dbconfig.json'));
const sequelize = new Sequelize(config.database, config.username, config.password, {
  host: config.host,
  dialect: 'postgres',
  define: {
    timestamps: false,
    freezeTableName: true,
  },
  pool: {
    max: 5,
    min: 0,
    idle: 10000,
  },
});
const db = { };

fs
  .readdirSync(__dirname)
  .filter((file) => {
    return (file.indexOf('.') !== 0 && file !== 'index.js');
  })
  .forEach((file) => {
    const model = sequelize.import(path.join(__dirname, file));
    db[model.name] = model;
  });

db.sequelize = sequelize;
db.Sequelize = Sequelize;

Object.keys(db).forEach((modelName) => {
  const model = db[modelName];
  if ('associate' in model && typeof model.associate === 'function') {
    model.associate(db);
  }
});

module.exports = db;
