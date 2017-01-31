'use strict';

module.exports = function (sequelize, DataTypes) {
  const Author = sequelize.define('author', {
    paperId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      field: 'paperid',
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
      field: 'personid',
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    number: {
      type: DataTypes.INTEGER,
      nullable: false,
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
