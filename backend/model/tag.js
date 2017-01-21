'use strict';

module.exports = function (sequelize, DataTypes) {
  return sequelize.define('tag', {
    name: {
      type: DataTypes.STRING,
      primaryKey: true,
    },
  });
};
