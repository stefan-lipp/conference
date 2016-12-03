"use strict";

module.exports = function(sequelize, DataTypes) {
    var Event = sequelize.define('event',{
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
                key: "id"
            }
        },
        paperid: {
            type: DataTypes.INTEGER,
            allowNull: true,
            references: {
                model: "paper",
                key: "id"
            }
        },
        roomname: {
            type: DataTypes.STRING,
            allowNull: true,
            references: {
                model: "room",
                key: "name"
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
            allowNull: false,
            references:{
                model: "kind",
                key: "name"
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
                key: "id"
            }
        }
    });
    return Event;
};