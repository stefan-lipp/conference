"use strict";

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('event',{
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    sessionid: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: "session",
        key: "id",
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    },
    paperid: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: "paper",
        key: "id",
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    },
    roomname: {
      type: DataTypes.STRING,
      allowNull: true,
      references: {
        model: "room",
        key: "name",
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    },
    alias: {
      type: DataTypes.STRING,
      allowNull: true
    },
    duration: {
      type: DataTypes.TIME,
      allowNull: false
    },
    starttime: {
      type: DataTypes.DATE,
      allowNull: true
    },
    kind: {
      type: DataTypes.STRING,
      allowNull: true,
      references:{
        model: "kind",
        key: "name",
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      }
    },
    isexclusive: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    maxsize: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    conferenceid: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: "conference",
        key: "id",
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    }
  });
};