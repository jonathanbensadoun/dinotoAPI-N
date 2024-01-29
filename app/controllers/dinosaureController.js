const { Dinosaures } = require("../models");

const dinosaureController = {
  getAllDinosaures: async (req, res) => {
    try {
      const dinosaures = await Dinosaures.findAll({
        include: ["continent", "famille", "regime_alimentaire", "environement"],
      });
      if (!dinosaures) {
        res.status(404).json("Aucun dinosaure trouvé ...");
      } else {
        res.status(200).json(dinosaures);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
  getOneDinosaure: async (req, res) => {
    try {
      const dinosaureId = req.params.id;
      const dinosaure = await Dinosaures.findByPk(dinosaureId, {
        include: ["continent", "famille", "regime_alimentaire", "environement"],
      });
      if (!dinosaure) {
        res.status(404).json("Aucun dinosaure trouvé ...");
      } else {
        res.status(200).json(dinosaure);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
};

module.exports = dinosaureController;
