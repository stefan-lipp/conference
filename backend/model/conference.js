'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('conference', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    location: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    fromDate: {
      type: DataTypes.DATEONLY,
      field: 'fromdate',
      allowNull: false,
    },
    untilDate: {
      type: DataTypes.DATEONLY,
      field: 'untildate',
      allowNull: false,
    },
  });
};
