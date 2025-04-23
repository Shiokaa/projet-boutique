const express = require("express");
const router = express.Router();
const controller = require("../controllers/product");

router.get("/product/:id", controller.getProductById);
router.get("/product", controller.getAllProduct);

module.exports = router;
