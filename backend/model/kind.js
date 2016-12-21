'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('kind', {
    name: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
  });
};
