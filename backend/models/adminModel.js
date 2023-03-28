const mongoose = require("mongoose");

let adminSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Admin must have a name"],
  },
  user_id: {
    type: Number,
    required: [true, "Admin must have a user id"],
    unique: true,
  },
  password: {
    type: String,
    required: [true, "Admin must have a password"],
  },
  location: {
    type: String,
    required: [true, "Admin must have a Location"],
    unique: true,
  },
});

let adminModel = mongoose.model("Admin", adminSchema);

module.exports = adminModel;
