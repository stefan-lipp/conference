'use strict';

module.exports = function (sequelize, DataTypes) {
  const EventComment = sequelize.define('eventcomment', {
    eventId: {
      type: DataTypes.INTEGER,
      allowNull: false,
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
      allowNull: false,
      field: 'personid',
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    comment: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    timestamp: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: DataTypes.NOW,
    },
  }, {
    classMethods: {
      associate: (models) => {
        EventComment.belongsTo(models.event, { foreignKey: 'eventid' });
        EventComment.belongsTo(models.person, { foreignKey: 'personid' });
      },
    },
  });
  return EventComment;
};
