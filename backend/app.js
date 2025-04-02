const express = require("express");
const app = express();
const port = 3000;
const cors = require("cors");
const tshirtRoute = require("./routes/tshirt");

app.use(
  cors({
    origin: "*",
  })
);

app.use(tshirtRoute);
app.listen(port, () => console.log(`Server listening on port ${port}`));
