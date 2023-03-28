const mongoose = require("mongoose");

const TransactionSchema = mongoose.Schema({
  name: {
    type: String,
    required: [true, ""],
  },
  date: {
    type: Date,
    default: Date.now(),
  },
  quantity: {
    type: Number,
    required: [true, "Quantity should be provided"],
  },
  offerPrice: {
    type: Number,
    default: -1,
  },
  approvedPrice: {
    type: Number,
    default: -1,
    validate: {
      validator: function (Val) {
        return !(val === -1 && this.offerPrice === -1);
      },
    },
    message: "Please provide either the Offer Price or Approved Price",
  },

  isOffered: {
    type: Boolean,
    default: offerPrice != -1,
  },
  isApproved: {
    type: Boolean,
    default: approvedPrice != -1,
  },
  isSold: {
    type: Boolean,
    default: false,
  },
});

let TransactionModel = mongoose.model("Transaction", TransactionSchema);

module.exports = TransactionModel;
