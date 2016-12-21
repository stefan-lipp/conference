"use strict";

module.exports = function(sequelize, DataTypes) {
  const Paper = sequelize.define('paper',{
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true
    },
    keywords: {
      type: DataTypes.STRING,
      allowNull: false
    },
    abstract: {
      type: DataTypes.TEXT,
      allowNull: false,
      unique: true
    },
    url: {
      type: DataTypes.STRING,
      allowNull: true,
      unique: true
    },
    tag : {
      type: DataTypes.STRING,
      allowNull: true,
      references: {
        model: "tag",
        key: 'name',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    }
  }, {
    classMethods: {
      associate: (models) => {
        Paper.hasMany(models.author, { foreignKey: 'paperid' });
      }
    },
  });
  return Paper;
};
