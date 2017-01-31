'use strict';

module.exports = function (sequelize, DataTypes) {
  const EventRessource = sequelize.define('eventressource', {
    eventid: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'event',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    url: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  }, {
    classMethods: {
      associate: (models) => {
        EventRessource.belongsTo(models.paper, { foreignKey: 'paperid' });
      },
    },
  });
  return EventRessource;
};
