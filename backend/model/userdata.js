'use strict';

module.exports = function (sequelize, DataTypes) {
  const UserData = sequelize.define('userdata', {
    personId: {
      type: DataTypes.UUID,
      field: 'personid',
      primaryKey: true,
      references: {
        model: 'person',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    token: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  }, {
    classMethods: {
      associate: (models) => {
        UserData.belongsTo(models.person, { foreignKey: 'personId' });
        UserData.hasOne(models.admin, { foreignKey: 'userdataId' });
      },
    },
  });
  return UserData;
};
