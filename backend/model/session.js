"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('session',{
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    trackid : {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: "track",
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    },
    starttime: {
      type: DataTypes.DATE, // Timestamp
      allowNull: false
    },
    endtime : {
      type: DataTypes.DATE, // Timestamp
      allowNull: false
    },
    chair: {
      type: DataTypes.UUID,
      allowNull: true,
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    }
  });
};