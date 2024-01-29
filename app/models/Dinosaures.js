const { DataTypes, Model } = require("sequelize");
const sequelize = require("../db");

class Dinosaures extends Model {}

Dinosaures.init(
  {
    name: DataTypes.STRING,
    img: DataTypes.STRING,
    hauteur: DataTypes.INTEGER,
    longeur: DataTypes.INTEGER,
    poids: DataTypes.INTEGER,
    description: DataTypes.STRING,
  },
  {
    sequelize,
    tableName: "dinosaures",
  }
);

module.exports = Dinosaures;
