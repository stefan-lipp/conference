'use strict';

module.exports = function (sequelize, DataTypes) {
  const Paper = sequelize.define('paper', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    abstract: {
      type: DataTypes.TEXT,
      allowNull: false,
      unique: true,
    },
    url: {
      type: DataTypes.STRING,
      allowNull: true,
      unique: true,
    },
  }, {
    classMethods: {
      associate: (models) => {
        Paper.hasMany(models.author, { foreignKey: 'paperId' });
        Paper.hasMany(models.paperkeyword, { as: 'keywords', foreignKey: 'paperId' });
      },
    },
  });
  return Paper;
};
