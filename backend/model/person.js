"use strict";

module.exports = function(sequelize, DataTypes) {
    var Person = sequelize.define('person',{
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
                key: 'id'
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

    return Person;
};