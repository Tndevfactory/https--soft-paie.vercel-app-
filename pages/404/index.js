/** @format */
import { motion } from "framer-motion";
import Head from "next/head";
import styled, { css } from "styled-components";
import NotFound from "../../components/404/NotFound";
import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";
import React, { useState } from "react";
import { useRouter } from "next/router";
import chroma from "chroma-js";
import Loader1 from "../../components/loader/Loader1";
import { ProdCtx, apiProfileShowOne } from "../../contexts/ProductsContext";
import Cookies from "js-cookie";
import { FaChevronLeft, FaRegArrowAltCircleLeft } from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-height: 100vh;
  min-width: 100%;
  background-color: rgb(183, 180, 187);
  overflow-x: hidden;
  line-height: 2;
  //background: red;
  .main {
    // background: pink;
    min-height: 80vh;
    display: flex;
    justify-content: center;
    align-items: center;
    //flex-flow: column;
  }
  .bottom {
    padding: 0;
    //background: orange;
    min-height: 20vh;
    display: flex;
    justify-content: center;
    align-items: flex-end;
  }
`;

const Mobile = styled(Desktop)`
  @media (min-width: 361px) and (max-width: 600px) {
    margin-top: 0.5rem;
  }
  @media (max-width: 360px) {
    margin-top: 0.5rem;
  }
`;

export default function NotFoundPage() {
  const router = useRouter();
  const [prodMethods, prodStates] = ProdCtx();
  const { apiUpdate } = prodMethods;
  const { ui, setUi, switchMode, loader, setLoader, setSwitchMode } =
    prodStates;
  return (
    <>
      <Head>
        <meta name="description" content="software of paie" />
        <meta name="author" content="ch" />
        <meta name="og:title" property="og:title" content="soft paie" />
        <meta name="twitter:card" content="soft paie" />
        <meta name="robots" content="index, follow" />
        <title> 404</title>
      </Head>

      <Mobile ui={ui} switchMode={switchMode}>
        {/* solution litte screen */}

        <div className="main">
          <Navbar />

          <NotFound />
        </div>

        <div className="bottom">
          <Footer fixed={false} />
        </div>
      </Mobile>
    </>
  );
}
