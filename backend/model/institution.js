'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('institution', {
    id: {
      type: DataTypes.UUID,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    details: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    url: {
      type: DataTypes.STRING,
      field: 'iconurl',
      allowNull: true,
    },
    iconUrl: {
      type: DataTypes.STRING,
      field: 'iconurl',
      allowNull: true,
    },
  });
};
