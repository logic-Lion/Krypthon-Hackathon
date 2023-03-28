import React from "react";
import { useState } from "react";
function Farmer_Order() {
  let [name, setName] = useState("");
  let [unique_id, setID] = useState("");
  let [product_name, setProductName] = useState("");
  let [phone_number, setPhoneNumber] = useState("");
  let [quantity, setQuantity] = useState("");

  function onSubmit() {
    let obj = {
      name,
      unique_id: +unique_id,
      product_name,
      phone_number,
      quantity,
    };
    let request = new XMLHttpRequest();

    request.open("POST", "http://127.0.0.1:8000/api/v1/farmer/order");

    request.send(JSON.stringify(obj));
    request.addEventListener("load", function (e, request) {
      console.log(request);
    });
  }

  return (
    <div className="container">
      <form id="contact" action="" method="post">
        <h3>Order Details</h3>
        <h4>Fill the details to place the order!</h4>
        <fieldset>
          <input
            onChange={(text) => {
              setName(text.target.value);
            }}
            value={name}
            placeholder="Farmer's name"
            type="text"
            tabIndex="1"
            required={true}
            autoFocus={true}
          />
        </fieldset>
        <fieldset>
          <input
            onChange={(text) => {
              setID(text.target.value);
            }}
            placeholder="Farmer's Unique ID"
            type="text"
            tabIndex="2"
            required={true}
          />
        </fieldset>
        <fieldset>
          <input
            onChange={(text) => {
              setPhoneNumber(text.target.value);
            }}
            placeholder="Farmer's Phone Number"
            type="tel"
            tabIndex="3"
            required={true}
          />
        </fieldset>
        <fieldset>
          <input
            value={product_name}
            onChange={(text) => {
              setProductName(text.target.value);
            }}
            placeholder="Product Name"
            type="url"
            tabIndex="4"
            required={true}
          />
        </fieldset>
        <fieldset>
          <input
            value={quantity}
            onChange={(text) => {
              setQuantity(text.target.value);
            }}
            type="text"
            placeholder="Quantity"
            tabIndex="4"
            required={true}
          />
        </fieldset>

        <fieldset>
          <button
            onClick={(e) => {
              e.preventDefault();
              console.log("Clicked");
              onSubmit();
            }}
            name="submit"
            type="submit"
            id="contact-submit"
            data-submit="...Sending"
          >
            Submit
          </button>
        </fieldset>
      </form>
    </div>
  );
}

export default Farmer_Order;
