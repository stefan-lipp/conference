"use strict";

module.exports = function(sequelize, DataTypes) {
  const Author = sequelize.define('author',{
    paperid: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'paper',
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
      associate: (models) => {
        Author.belongsTo(models.paper, { foreignKey: 'paperid' });
        Author.belongsTo(models.person, { foreignKey: 'personid' });
      }
    },
  });
  return Author;
};
