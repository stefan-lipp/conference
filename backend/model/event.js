'use strict';

module.exports = function (sequelize, DataTypes) {
  const Event = sequelize.define('event', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    sessionId: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'session',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
    paperId: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'paper',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
    roomName: {
      type: DataTypes.STRING,
      allowNull: true,
      references: {
        model: 'room',
        key: 'name',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
    alias: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    duration: {
      type: DataTypes.TIME,
      allowNull: false,
    },
    startTime: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    kind: {
      type: DataTypes.STRING,
      allowNull: true,
      references: {
        model: 'kind',
        key: 'name',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
    isExclusive: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
    },
    maxSize: {
      type: DataTypes.INTEGER,
      allowNull: true,
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
  }, {
    classMethods: {
      associate: (models) => {
        Event.belongsTo(models.paper, { foreignKey: 'paperId' });
        Event.hasMany(models.favorite, { foreignKey: 'eventId' });
      },
    },
  });
  return Event;
};
