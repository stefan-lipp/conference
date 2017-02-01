'use strict';

module.exports = function (sequelize, DataTypes) {
  const Track = sequelize.define('track', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    conferenceId: {
      type: DataTypes.INTEGER,
      field: 'conferenceid',
      allowNull: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    color: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: '#333333',
    },
    backgroundColor: {
      type: DataTypes.STRING,
      field: 'backgroundcolor',
      allowNull: false,
      defaultValue: '#dddddd',
    },
    kind: {
      type: DataTypes.STRING,
      allowNull: false,
      references: {
        model: 'kind',
        key: 'name',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
  }, {
    classMethods: {
      associate: (models) => {
        Track.belongsTo(models.kind, { foreignKey: 'kind', as: 'kindname' });
      },
    },
  });
  return Track;
};
