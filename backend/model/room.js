'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('room', {
    name: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
    size: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    conferenceId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'conference',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
  });
};
