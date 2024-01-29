const dotenv = require("dotenv");
dotenv.config();

const multer = require("multer");
const bodyParser = multer();

const express = require("express");
const router = require("./app/router");

const cors = require("cors");
const bodySanitizer = require("./app/middlewares/bodySanitizer");
const PORT = process.env.PORT;
const app = express();

app.use(bodyParser.none());
app.use(express.static("assets"));
app.use(cors("*"));
app.use(express.json());
app.use(bodySanitizer);
app.use(router);

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT} http://localhost:${PORT} ...`);
});
