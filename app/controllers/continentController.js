const { Continents } = require("../models");

const continentController = {
  getAllContinents: async (req, res) => {
    try {
      const continents = await Continents.findAll({
        include: "dinosaures",
      });
      if (!continents) {
        res.status(404).json("Aucun continent trouvé ...");
      } else {
        res.status(200).json(continents);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
  getOneContinent: async (req, res) => {
    try {
      const continentId = req.params.id;
      const continent = await Continents.findByPk(continentId, {
        include: "dinosaures",
      });
      if (!continent) {
        res.status(404).json("Aucun continent trouvé ...");
      } else {
        res.status(200).json(continent);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
};

module.exports = continentController;
