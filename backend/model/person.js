"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('person',{
    id: {
      type: DataTypes.UUID,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    institutionid: {
      type: DataTypes.UUID,
      allowNull: true,
      references: {
        model: 'institution',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    },
    email: {
      type: DataTypes.STRING,
      allowNull: true,
      unique: true,
      validate: { isEmail:true }
    },
    details : {
      type: DataTypes.TEXT,
      allowNull: true
    }
  });
};