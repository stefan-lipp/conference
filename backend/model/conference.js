"use strict";

module.exports = function(sequelize, DataTypes) {
    var Conference = sequelize.define('conference',{
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true
        },
        location: {
            type: DataTypes.STRING,
            allowNull: false
        },
        fromdate: {
            type: DataTypes.DATEONLY,
            allowNull: false
        },
        untildate: {
            type: DataTypes.DATEONLY,
            allowNull: false
        }
    });

    return Conference;
};