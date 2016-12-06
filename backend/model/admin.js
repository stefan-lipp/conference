"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('admin',{
    userdataid: {
      type: DataTypes.UUID,
      primaryKey: true,
      references: {
        model: 'userdata',
        key: 'personid',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    },
    conferenceid: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'conference',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    }
  });
};