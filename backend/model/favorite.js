"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('userdata',{
    eventid: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    },
    personid: {
      type: DataTypes.UUID,
      primaryKey: true,
      references: {
        model: 'person',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    }
  });
};