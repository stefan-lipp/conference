"use strict";

module.exports = function(sequelize, DataTypes) {
    var Track = sequelize.define('track',{
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        conferenceid: {
            type: DataTypes.INTEGER,
            allowNull: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: true,
        },
        kind : {
            type: DataTypes.STRING,
            allowNull: false,
            references: {
                model: "kind",
                key: 'name'
            }
        }
    });
    return Track;
};