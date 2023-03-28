import React from "react";
import Link from "next/link";
import "tailwindcss/tailwind.css";

function Header() {
  return (
    <div>
      <nav
        className="align-middle"
        style={{
          color: "white",
        }}
      >
        <ul
          className=" my-20 flex justify-center font-bold "
          style={{
            fontSize: "20px",
          }}
        >
          <Link href={"/"}>
            <li className=" mx-10">Mandi</li>
          </Link>
          <Link href={"/contact"}>
            <li className="mx-10 text-2xl">Logistic</li>
          </Link>
          <Link href={"/blog/not-ready"}>
            <li className="mx-10">Warehouse</li>
          </Link>
        </ul>
      </nav>
    </div>
  );
}

export default Header;
