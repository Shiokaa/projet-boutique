const Product = require("../models/product");

exports.getProductById = async (req, res) => {
  const id = parseInt(req.params.id);

  const productItem = await Product.getProductById(id);
  const colors = await Product.getProductColorById(id);
  const sizes = await Product.getProductSizeById(id);
  const gender = await Product.getProductGenderById(id);

  const product = {
    ...productItem,
    colors,
    sizes,
    gender,
  };

  if (!product) {
    return res.status(404).json({
      message: "Product Not Found",
    });
  }

  res.status(200).json({
    message: "Product found",
    product,
  });
};
