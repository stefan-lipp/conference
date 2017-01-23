'use strict';

module.exports = function (sequelize, DataTypes) {
  const Favorite = sequelize.define('favorite', {
    eventId: {
      type: DataTypes.INTEGER,
      field: 'eventid',
      primaryKey: true,
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    personId: {
      type: DataTypes.UUID,
      field: 'personid',
      primaryKey: true,
      references: {
        model: 'person',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
  }, {
    classMethods: {
      associate: (models) => Favorite.belongsTo(models.event, { foreignKey: 'eventId' }),
    },
  });
  return Favorite;
};
