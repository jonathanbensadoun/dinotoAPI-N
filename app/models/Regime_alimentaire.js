const { DataTypes, Model } = require("sequelize");
const sequelize = require("../db");

class Regime_alimentaire extends Model {}

Regime_alimentaire.init(
  {
    label: DataTypes.STRING,
  },
  {
    sequelize,
    tableName: "regime_alimentaire",
  }
);

module.exports = Regime_alimentaire;
