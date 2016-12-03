"use strict";

var fs        = require("fs");
var path      = require("path");
var Sequelize = require("sequelize");
var sequelize = new Sequelize('conference', 'eliti', 'ritter', {
  host: 'localhost',
  dialect: 'postgres',
  define: {
    timestamps: false,
        freezeTableName: true
  },
  pool: {
    max: 5,
    min: 0,
    idle: 10000
  },
});
var db = {};

fs
  .readdirSync(__dirname)
  .filter(function(file) {
    return (file.indexOf(".") !== 0) && (file !== "index.js") && (file!=="node_modules") && (file!=="test") && (file!=="package.json");
  })
  .forEach(function(file) {
    console.log(file);
    var model = sequelize.import(path.join(__dirname, file));
    db[model.name] = model;
  });

sequelize.sync({force: true});
//db.sequelize = sequelize;
//db.Sequelize = Sequelize;

//module.exports = db;