"use strict";

module.exports = function(sequelize, DataTypes) {
    var Speaker = sequelize.define('speaker',{
        eventid: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            references: {
                model: 'event',
                key: 'id'
            }
        },
        personid: {
            type: DataTypes.UUID,
            primaryKey: true,
            references: {
                model: 'person',
                key: 'id'
            }
        }
    });

    return Speaker;
};