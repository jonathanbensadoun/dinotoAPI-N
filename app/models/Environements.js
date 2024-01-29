const { DataTypes, Model } = require("sequelize");
const sequelize = require("../db");

class Environements extends Model {}

Environements.init(
  {
    label: DataTypes.STRING,
  },
  {
    sequelize,
    tableName: "environements",
  }
);

module.exports = Environements;
