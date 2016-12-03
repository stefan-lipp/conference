"use strict";

module.exports = function(sequelize, DataTypes) {
    var Author = sequelize.define('author',{
        paperid: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            references: {
                model: 'paper',
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

    return Author;
};