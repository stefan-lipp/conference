"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('room', {
    name: {
      type: DataTypes.STRING,
    primaryKey: true
    },
    size: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  });
  return Room;
};