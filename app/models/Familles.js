const { DataTypes, Model } = require("sequelize");
const sequelize = require("../db");

class Familles extends Model {}

Familles.init(
  {
    label: DataTypes.STRING,
  },
  {
    sequelize,
    tableName: "familles",
  }
);

module.exports = Familles;
