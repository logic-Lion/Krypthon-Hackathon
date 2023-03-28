const express = require("express");
const generator = require("generate-serial-number");

const router = express.Router();
const farmerOrderModel = require("../models/farmerOrderModelMandi");
const farmerDetailsModel = require("../models/farmerDetails");

router.route("/").post(async function (request, response) {
  try {
    let data = request.body;
    if (typeof request.body === "String") {
      data = JSON.parse(data);
    }
    data.unique_number = generator.generate(8);

    let farmer = await farmerDetailsModel.create(data);
    console.log(data);

    response.status(200).json({
      status: "success",
      message: "POST request for the farmer's data received",
      data,
    });
  } catch (error) {
    console.log(error);
    response.status(400).json({
      status: "failed",
      error,
    });
  }
});

router
  .route("/order")
  .get(async function (request, response) {
    try {
      response.status(200).json({
        status: "success",
        message: "GET request received",
      });
    } catch (error) {
      response.status(404).json({
        status: "failed",
        error,
      });
    }
  })
  .post(async function (request, response) {
    try {
      let data = JSON.parse(request.body);

      let order = farmerOrderModel.create(data);

      response.status(200).json({
        status: "success",
        message: "POST request received",
      });
    } catch (error) {
      response.status(400).json({
        status: "failed",
        error,
      });
    }
  });

module.exports = router;
