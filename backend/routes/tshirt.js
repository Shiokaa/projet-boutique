const express = require("express");
const router = express.Router();
const controller = require("../controllers/tshirt");

router.get("/tshirt", controller.getAllTshirts);

module.exports = router;
