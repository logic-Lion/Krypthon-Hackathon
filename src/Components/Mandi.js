import React, { useState } from "react";
import "../app/admin.mandi.css";
import Farmer_Order from "./Farmer_Order_Form";

function Mandi() {
  let [open, setOpen] = useState(false);

  //   let [name, setName] = useState("");
  //   let [unique_id, setID] = useState("");
  //   let [product_name, setProductName] = useState("");
  //   let [phone_number, setPhoneNumber] = useState("");
  //   let [quantity, setQuantity] = useState("");

  return (
    // Show the limits of the orders

    // Create Order Form

    <div>
      <div className="form_selection_wrapper">
        <div className="form_selection">
          <div className="form_selection_heading">Create a Order</div>
          <div
            className="form_selection_heading"
            onClick={() => {
              setOpen(!open);
            }}
          >
            {open ? "-" : "+"}
          </div>
        </div>
        {open ? <Farmer_Order></Farmer_Order> : ""}
      </div>
    </div>
  );
}

export default Mandi;
