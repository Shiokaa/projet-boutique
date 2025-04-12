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

app.use(express.static("img"));
app.use(productRoute);

app.listen(port, () => console.log(`Server listening on port ${port}`));
