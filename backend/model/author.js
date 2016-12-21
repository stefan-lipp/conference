'use strict';

module.exports = function (sequelize, DataTypes) {
  const Author = sequelize.define('author', {
    paperId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'paper',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    personId: {
      type: DataTypes.UUID,
      primaryKey: true,
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
        Author.belongsTo(models.paper, { foreignKey: 'paperId' });
        Author.belongsTo(models.person, { foreignKey: 'personId' });
      },
    },
  });
  return Author;
};
