'use strict';

module.exports = function (sequelize, DataTypes) {
  const speaker = sequelize.define('speaker', {
    eventId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      field: 'eventid',
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    personId: {
      type: DataTypes.UUID,
      primaryKey: true,
      field: 'personid',
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
  }, {
    classMethods: {
      associate: (models) => {
        speaker.belongsTo(models.event, { foreignKey: 'eventid' });
        speaker.belongsTo(models.person, { foreignKey: 'personid' });
      },
    },
    number: {
      type: DataTypes.INTEGER,
      nullable: false,
    },
  });
  return speaker;
};
