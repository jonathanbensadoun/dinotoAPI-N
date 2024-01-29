const { DataTypes, Model } = require("sequelize");
const sequelize = require("../db");

class Continents extends Model {}

Continents.init(
  {
    label: DataTypes.STRING,
  },
  {
    sequelize,
    tableName: "continents",
  }
);

module.exports = Continents;
