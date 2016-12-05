"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('speaker',{
    eventid: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'event',
        key: 'id'
      }
    },
    personid: {
      type: DataTypes.UUID,
      primaryKey: true,
      references: {
        model: 'person',
        key: 'id'
      }
    }
  });
};