const mongoose = require("mongoose");

let orderSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Name should be provided"],
  },
  unique_id: {
    type: Number,
    required: [true, "Unique ID should be provided"],
  },
  product_name: {
    type: String,
    required: [true, "Product Name should be provided"],
  },
  quantity: {
    type: Number,
    required: [true, "Quantity should be provided"],
  },
  order_date: {
    type: Date,
    default: Date.now(),
  },
});

let orderModel = mongoose.model("Order", orderSchema);

module.exports = orderModel;
