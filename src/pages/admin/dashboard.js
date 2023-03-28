import React from "react";
import Head from "next/head";
import Header from "./Header";
import Mandi from "@/Components/Mandi";

function dashboard() {
  return (
    <div>
      <Head>
        <title>Dashboard</title>
      </Head>
      <Header></Header>
      <Mandi></Mandi>
    </div>
  );
}

export default dashboard;
