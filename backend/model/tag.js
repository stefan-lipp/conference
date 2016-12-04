"use strict";

module.exports = function(sequelize, DataTypes) {
    var Tag = sequelize.define('tag', {
        name: {
            type: DataTypes.STRING,
            primaryKey: true
        }
    });
    return Tag;
};