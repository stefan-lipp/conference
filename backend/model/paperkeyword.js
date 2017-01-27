'use strict';

module.exports = function (sequelize, DataTypes) {
  const PaperKeyword = sequelize.define('paperkeyword', {
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
    keyword: {
      type: DataTypes.TEXT,
      primaryKey: true,
      references: {
        model: 'keyword',
        key: 'name',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
  }, {
    classMethods: {
      associate: (models) => {
        PaperKeyword.belongsTo(models.paper, { foreignKey: 'paperId' });
      },
    },
  });
  return PaperKeyword;
};
