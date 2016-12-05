"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('userdata',{
    personid: {
      type: DataTypes.UUID,
      primaryKey: true,
      references: {
        model: 'person',
        key: 'id'
      }
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false
    },
    token: {
      type: DataTypes.STRING,
      allowNull: false,
    }
  });
};