const express = require("express");

const dinosaureController = require("./controllers/dinosaureController");
const continentController = require("./controllers/continentController");
const familleController = require("./controllers/familleController");
const environementController = require("./controllers/environementController");
const regimeAlimentaireController = require("./controllers/regimeAlimentaireController");

const router = express.Router();

router.get("/dinosaures", dinosaureController.getAllDinosaures);
router.get("/dinosaure/:id", dinosaureController.getOneDinosaure);

router.get("/continents", continentController.getAllContinents);
router.get("/continent/:id", continentController.getOneContinent);

router.get("/familles", familleController.getAllFamilles);
router.get("/famille/:id", familleController.getOnefamille);

router.get("/environements", environementController.getAllEnvironements);
router.get("/environement/:id", environementController.getOneEnvironement);

router.get(
  "/regimes-alimentaires",
  regimeAlimentaireController.getAllRegimesAlimentaires
);
router.get(
  "/regime-alimentaire/:id",
  regimeAlimentaireController.getOneRegimeAlimentaire
);

module.exports = router;
