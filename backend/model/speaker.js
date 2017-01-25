'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('speaker', {
    eventId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      field: 'eventid',
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    personId: {
      type: DataTypes.UUID,
      primaryKey: true,
      field: 'personid',
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
  });
};
