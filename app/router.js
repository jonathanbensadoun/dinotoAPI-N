const express = require("express");
const path = require("path");
const dinosaureController = require("./controllers/dinosaureController");

const router = express.Router();

router.get("/dinosaures", dinosaureController.getAllDinosaures);
router.get("/dinosaure/:id", dinosaureController.getOneDinosaure);

module.exports = router;
