const app = require("./app");
const mongoose = require("mongoose");
const dotenv = require("dotenv");

dotenv.config({
  path: "./config.env",
});

let username = process.env.DATABASE_USERNAME;
let password = process.env.DATABASE_PASSWORD;
let database_string = process.env.DATABASE.replace(
  "<USERNAME>",
  username
).replace("<PASSWORD>", password);

console.log(database_string);

mongoose
  .connect(database_string, {
    useNewUrlParser: true,
    useCreateIndex: true,
    useFindAndModify: false,
  })
  .then((connection) => {
    console.log("Database Successfully connected");
  })
  .catch((err) => {
    console.log(err);
  });

app.listen(8000, "192.168.218.242", function () {
  console.log("Running on Port 8000");
});
