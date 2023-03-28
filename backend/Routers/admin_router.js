const express = require("express");

let router = express.Router();
let admin_model = require("../models/adminModel");

router.route("/").post(async (request, response) => {
  try {
    let obj = JSON.parse(request.body);
    obj.user_id = +obj.user_id;

    let admin = await admin_model.create(obj);

    response.status(200).json({
      status: "success",
      message: "POST request for the admin received",
      data: admin,
    });
  } catch (error) {
    console.log(error.message);
    response.status(400).json({
      status: "failed",

      error,
    });
  }
});

module.exports = router;
