const { Familles } = require("../models");

const familleController = {
  getAllFamilles: async (req, res) => {
    try {
      const familles = await Familles.findAll({
        include: "dinosaures",
      });
      if (!familles) {
        res.status(404).json("Aucune famille trouvé ...");
      } else {
        res.status(200).json(familles);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
  getOnefamille: async (req, res) => {
    try {
      const familleId = req.params.id;
      const famille = await Familles.findByPk(familleId, {
        include: "dinosaures",
      });
      if (!famille) {
        res.status(404).json("Aucune famille trouvé ...");
      } else {
        res.status(200).json(famille);
      }
    } catch (error) {
      res.status(500).json({ message: "Erreur interne du serveur" });
    }
  },
};

module.exports = familleController;
