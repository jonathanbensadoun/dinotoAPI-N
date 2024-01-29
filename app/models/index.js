const Continents = require("./Continents");
const Dinosaures = require("./Dinosaures");
const Environements = require("./Environements");
const Familles = require("./Familles");
const Regime_alimentaire = require("./Regime_alimentaire");

Continents.hasMany(Dinosaures, {
  foreignKey: "continent_id",
  as: "dinosaures",
});

Dinosaures.belongsTo(Continents, {
  foreignKey: "continent_id",
  as: "continent",
});

Environements.hasMany(Dinosaures, {
  foreignKey: "environement_id",
  as: "dinosaures",
});

Dinosaures.belongsTo(Environements, {
  foreignKey: "environement_id",
  as: "environement",
});

Familles.hasMany(Dinosaures, {
  foreignKey: "famille_id",
  as: "dinosaures",
});

Dinosaures.belongsTo(Familles, {
  foreignKey: "famille_id",
  as: "famille",
});

Regime_alimentaire.hasMany(Dinosaures, {
  foreignKey: "environement_id",
  as: "dinosaures",
});

Dinosaures.belongsTo(Regime_alimentaire, {
  foreignKey: "environement_id",
  as: "regime_alimentaire",
});

module.exports = {
  Continents,
  Dinosaures,
  Familles,
  Regime_alimentaire,
  Environements,
};
