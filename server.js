const express = require("express");
const app = express();
const port = 3200;

app.get("/", (req, res) => {
  res.send("Server up!");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
