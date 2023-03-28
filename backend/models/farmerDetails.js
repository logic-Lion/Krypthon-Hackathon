const mongoose = require("mongoose");

let detailSchema = mongoose.Schema({
  name: {
    type: String,
    required: [true, "name should be provided"],
  },
  unique_number: {
    type: Number,
    require: [true, "unique number should be provided"],
  },
  password: {
    type: String,
    required: [true, "name should be provided"],
  },
  BPL_number: {
    type: String,
    default: null,
  },
  Aadhar_number: {
    type: String,
    required: [true, "Aadhar Number should be provided"],
  },
  Field_address: {
    type: String,
    required: [true, "Field Address should be provided"],
  },
  Phone_number: {
    type: String,
    required: [true, "Phone Number should be provided"],
  },
});

let detailModel = mongoose.model("farmer", detailSchema);

module.exports = detailModel;
