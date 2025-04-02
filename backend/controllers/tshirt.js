const data = require("../data.json");

exports.getAllTshirts = (req, res) => {
  const tshirts = data.tshirts;

  res.json(tshirts);
};
