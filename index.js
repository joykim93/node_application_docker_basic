const express = require("express");

const port = "3333";

const app = express();

app.get("/", (req, res) => {
  res.send("node-docker test recheck");
});

app.listen(port);
console.log(`server running on ${port}`);