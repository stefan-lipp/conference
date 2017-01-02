"use strict";

module.exports = function(sequelize, DataTypes) {
  const Speaker = sequelize.define('speaker',{
    eventid: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    },
    personid: {
      type: DataTypes.UUID,
      primaryKey: true,
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      }
    }
  }, {
    classMethods: {
      associate: (models) => Speaker.belongsTo(models.event, { foreignKey: 'eventid' }),
    },
  });
  return Speaker;
};
