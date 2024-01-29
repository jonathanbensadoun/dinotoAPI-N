const { Regime_alimentaire } = require("../models");

const regimeAlimentaireController = {
  getAllRegimesAlimentaires: async (req, res) => {
    try {
      const regimesAlimentaires = await Regime_alimentaire.findAll({
        include: "dinosaures",
      });
      if (!regimesAlimentaires) {
        res.status(404).json("Aucune regime alimentaire trouvé ...");
      } else {
        res.status(200).json(regimesAlimentaires);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
  getOneRegimeAlimentaire: async (req, res) => {
    try {
      const regimeAlimentaireId = req.params.id;
      const regimeAlimentaire = await Regime_alimentaire.findByPk(
        regimeAlimentaireId,
        {
          include: "dinosaures",
        }
      );
      if (!regimeAlimentaire) {
        res.status(404).json("Aucune regime alimentaire trouvé ...");
      } else {
        res.status(200).json(regimeAlimentaire);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
};

module.exports = regimeAlimentaireController;
