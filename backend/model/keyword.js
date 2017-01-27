'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('keyword', {
    name: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
  });
};
