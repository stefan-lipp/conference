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
      allowNull: false,
      references: {
        model: "track",
        key: 'id'
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
      type: UUID,
      allowNull: true
      references {
        model: 'person',
        key: 'id'
      }
    }
  });
};