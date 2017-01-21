'use strict';

module.exports = function (sequelize, DataTypes) {
  const Admin = sequelize.define('admin', {
    userdataId: {
      type: DataTypes.UUID,
      primaryKey: true,
      references: {
        model: 'userdata',
        key: 'personId',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
    conferenceId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: 'conference',
        key: 'id',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE',
      },
    },
  }, {
    classMethods: {
      associate: (models) => Admin.hasOne(models.userdata, { foreignKey: 'personId' }),
    },
  });
  return Admin;
};
