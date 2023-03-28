import React from "react";
import Head from "next/head";
import "../app/page.module.css";
import "tailwindcss/tailwind.css";
import Script from "next/script";
import Link from "next/link";

function index() {
  // Custom javascript file added
  // <script src={"trial.js"}></script>
  //   lazyOnLoad strategy will load the script only after all the doocument files are loaded
  // This is important in case of when we are using third party scripts
//   Image Components are also used to lazyLoad the images
  return (
    <div>
      <Head>
        <title>Shakti Nayak</title>
        
      </Head>
      
      <Script src="trail.js" strategy="lazyOnload"></Script>
      <nav className="align-middle">
      <ul className=" my-20 flex justify-center font-bold ">
      <Link href={"/"}><li className="mx-10">Home</li></Link>
      <Link href={"/contact"}><li className="mx-10">Contact</li></Link>
      <Link href={"/blog/not-ready"}><li className="mx-10">Blog</li></Link>
      <Link href={"/aboutUs"}><li className="mx-10">About</li></Link>
     
      </ul>
      </nav>
      <p className={"mx-5 my-5 bg-gray-200"}>Hello World</p>
      
    </div>
  );
}

export default index;
