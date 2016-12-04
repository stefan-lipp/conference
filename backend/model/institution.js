"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('institution',{
    id: {
      type: DataTypes.UUID,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    details: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    iconurl: {
      type: DataTypes.STRING,
      allowNull: true,
    }
  });
};