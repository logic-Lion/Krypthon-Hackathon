import Head from "next/head";
import Link from "next/link";
import { useState } from "react";
import React from "react";
import "tailwindcss/tailwind.css";
import "../../app/admin.login.css";

function login() {
  let [login, set_login] = useState(true);
  let [l_u, setL_u] = useState("");
  let [l_p, setL_p] = useState("");
  let [username, setUsername] = useState("");
  let [password, setPassword] = useState("");
  let [location, setLocation] = useState("");
  let [name, setName] = useState("");
  let [account_created, setAccountCreated] = useState(false);

  function change(param) {
    set_login(param);
  }

  function onSignUp(e) {
    e.preventDefault();

    let data = {
      user_id: username,
      password,
      name,
    };
    let request = new XMLHttpRequest();
    request.open("POST", "http://127.0.0.1:8000/api/v1/admin");

    request.send(JSON.stringify(data));

    request.addEventListener("load", function (e) {
      console.log(e.status);
      setAccountCreated(true);
    });
  }

  return (
    <div>
      <Head>
        <title>Admin Authentication</title>
      </Head>
      <div
        className="header"
        // style={{ alignItems: "center" }}
      >
        <div>
          <span className="header_text">Admin Login </span>
        </div>
      </div>
      <div
        className="wrapper"
        style={{ position: "absolute", top: "20%", left: "38%" }}
      >
        {login ? (
          <form method="post" className="form-signin">
            <h2 className="form-signin-heading">Please login</h2>
            <input
              type="number"
              style={{}}
              onChange={(text) => {
                setL_u(text.target.value);
              }}
              className="form-control"
              name="username"
              value={l_u}
              placeholder={"User ID"}
              required=""
              autoFocus=""
            />
            <input
              onChange={(text) => {
                setL_p(text.target.value);
              }}
              type="password"
              value={l_p}
              className="form-control"
              name="password"
              placeholder="Password"
              required=""
            />
            <br></br>
            <button
              className="btn btn-lg btn-primary btn-block btn-submit"
              type="submit"
            >
              Login
            </button>
            <br></br>
            <button
              className="btn btn-lg btn-primary btn-block btn-submit"
              onClick={(e) => {
                e.preventDefault();
                change(false);
              }}
            >
              Create Account
            </button>
          </form>
        ) : (
          <form method="post" className="form-signin">
            <h2 className="form-signin-heading">Please Sign Up</h2>
            <input
              type="text"
              style={{}}
              onChange={(text) => {
                setName(text.target.value);
              }}
              className="form-control"
              value={name}
              name="Name"
              placeholder="Name"
              required=""
              autoFocus=""
            />
            <input
              type="number"
              style={{}}
              onChange={(text) => {
                setUsername(text.target.value);
              }}
              className="form-control"
              value={username}
              name="username"
              placeholder="User ID"
              required=""
              autoFocus=""
            />
            <input
              style={{}}
              onChange={(text) => {
                setLocation(text.target.value);
              }}
              type="text"
              value={location}
              className="form-control"
              name="location"
              placeholder="Location"
              required=""
            />
            <input
              onChange={(text) => {
                setPassword(text.target.value);
              }}
              type="password"
              value={password}
              className="form-control"
              name="password"
              placeholder="Password"
              required=""
            />

            <br></br>
            <label for="department">Department:{"   "}</label>

            <select
              style={{
                textAlign: "center",
              }}
              name="department"
            >
              <option value="Mandi">Mandi</option>
              <option value="Logistic">Logistic</option>
              <option value="Warehouse">Warehouse</option>
            </select>
            <br></br>
            <button
              onClick={onSignUp}
              className="btn btn-lg btn-primary btn-block btn-submit"
              type="submit"
            >
              Sign In
            </button>
            <br></br>
            <button
              className="btn btn-lg btn-primary btn-block btn-submit"
              onClick={(e) => {
                e.preventDefault();
                change(true);
                setAccountCreated(false);
              }}
            >
              Already Have a Account ?{" "}
            </button>

            <br></br>
            <span
              style={{
                color: "lightgreen",
              }}
            >
              {account_created === true ? "Account Successfully Created" : ""}
            </span>
          </form>
        )}
      </div>
    </div>
  );
}

export default login;
