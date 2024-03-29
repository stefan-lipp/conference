'use strict';

module.exports = function (sequelize, DataTypes) {
  const SessionModel = sequelize.define('session', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    trackId: {
      type: DataTypes.INTEGER,
      field: 'trackid',
      allowNull: true,
      references: {
        model: 'track',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
    startTime: {
      // Timestamp
      type: DataTypes.DATE,
      field: 'starttime',
      allowNull: false,
    },
    endTime: {
      // Timestamp
      type: DataTypes.DATE,
      field: 'endtime',
      allowNull: false,
    },
    chair: {
      type: DataTypes.UUID,
      allowNull: true,
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
  }, {
    classMethods: {
      associate: (models) => {
        SessionModel.hasMany(models.event, { foreignKey: 'sessionid' });
        SessionModel.belongsTo(models.track, { foreignKey: 'trackid' });
        SessionModel.belongsTo(models.person, { foreignKey: 'chair' });
      },
    },
  });
  return SessionModel;
};
