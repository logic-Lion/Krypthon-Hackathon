const express = require("express");
const morgan = require("morgan");
const cors = require("cors");
const farmer_router = require("./Routers/farmer_router");
const admin_router = require("./Routers/admin_router");
const app = express();
app.use(cors());
app.use(express.json());
app.use(express.text());
app.use(morgan("dev"));

app.use("/api/v1/farmer", farmer_router);
app.use("/api/v1/admin", admin_router);

module.exports = app;
