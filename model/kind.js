"use strict";

module.exports = function(sequelize, DataTypes) {
    var Kind = sequelize.define('kind', {
      name: {
        type: DataTypes.STRING,
        primaryKey: true
      }
    });
    return Kind;
};