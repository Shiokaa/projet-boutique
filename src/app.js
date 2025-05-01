const express = require("express");
const app = express();
const port = 3000;
const cors = require("cors");
const productRoute = require("./api/routes/product");

app.use(
  cors({
    origin: "*",
  })
);

// STATIC FILES
app.use(express.static("public"));
app.use("/styles", express.static(__dirname + "public/styles"));
app.use("/img", express.static(__dirname + "public/img"));
app.use("/scripts", express.static(__dirname + "public/scripts"));

// TEMPLATING ENGINE

app.set("view engine", "ejs");

// PAGES ROUTES
app.get("/home", function (req, res) {
  res.render("pages/home");
});

app.get("/products", function (req, res) {
  res.render("pages/products");
});

app.get("/productpage", function (req, res) {
  res.render("pages/product");
});

app.get("/cart", function (req, res) {
  res.render("pages/cart");
});

app.get("/favorites", function (req, res) {
  res.render("pages/favorites");
});

// ROUTES
app.use(productRoute);

app.listen(port, () => console.log(`Server listening on port ${port}`));
