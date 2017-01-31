'use strict';

module.exports = function (sequelize, DataTypes) {
  const Person = sequelize.define('person', {
    id: {
      type: DataTypes.UUID,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    institutionId: {
      type: DataTypes.UUID,
      field: 'institutionid',
      allowNull: true,
      references: {
        model: 'institution',
        key: 'id',
        onDelete: 'SET NULL',
        onUpdate: 'CASCADE',
      },
    },
    email: {
      type: DataTypes.STRING,
      allowNull: true,
      unique: true,
      validate: { isEmail: true },
    },
    details: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    homepage: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    pictureurl: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
  }, {
    classMethods: {
      associate: (models) => {
        Person.belongsTo(models.institution, { foreignKey: 'institutionId' });
        Person.hasMany(models.author, { foreignKey: 'personId' });
      },
    },
  });
  return Person;
};
