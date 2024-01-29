const { Environements } = require("../models");

const environementController = {
  getAllEnvironements: async (req, res) => {
    try {
      const environements = await Environements.findAll({
        include: "dinosaures",
      });
      if (!environements) {
        res.status(404).json("Aucun environement trouvé ...");
      } else {
        res.status(200).json(environements);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
  getOneEnvironement: async (req, res) => {
    try {
      const environementId = req.params.id;
      const environement = await Environements.findByPk(environementId, {
        include: "dinosaures",
      });
      if (!environement) {
        res.status(404).json("Aucun environement trouvé ...");
      } else {
        res.status(200).json(environement);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
};

module.exports = environementController;
