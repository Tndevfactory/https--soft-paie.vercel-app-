/** @format */
import { motion } from "framer-motion";
import React from "react";
import Head from "next/head";

import styled, { css } from "styled-components";
import { ProdCtx,  } from "../../contexts/ProductsContext";
import Register1 from "../../components/registers/Register1";
import Loader1 from "../../components/loader/Loader1";
import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";

const Desktop = styled(motion.div)`
  min-height: 100vh;
  min-width: 100%;
  background-color: rgb(183, 180, 187);
  overflow-x: hidden;
  line-height: 2;
  //background: red;
  .main {
    // background: pink;
    min-height: 85vh;
    display: flex;
    justify-content: center;
    align-items: center;
    //flex-flow: column;
  }
  .bottom {
    padding: 0;
    //background: orange;
    min-height: 15vh;
    display: flex;
    justify-content: center;
    align-items: flex-end;
  }
`;

const Mobile = styled(Desktop)`
  @media (min-width: 1536px) and (max-width: 1919px) {
  }

  @media (min-width: 1440px) and (max-width: 1535px) {
  }
  @media (min-width: 1366px) and (max-width: 1439px) {
    .main {
      padding-top: 2rem;
      padding-bottom: 1rem;
    }
  }
  @media (min-width: 1280px) and (max-width: 1365px) {
  }
  @media (min-width: 361px) and (max-width: 600px) {
    margin-top: 0.5rem;
  }
  @media (max-width: 360px) {
    margin-top: 0.5rem;
  }
`;

// export const getServerSideProps = async () => {
//   const dt = await apiGet();

//   return { props: { dt } };
// };{ dt }

export default function Register() {
  
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet } = prodMethods;
  const {
    initialDataHotssr1,
    setInitialDataHotssr1,
    loader,
    setLoader,
    ui,
    switchMode,
  } = prodStates;

  return (
    <>
      <Head>
        <meta name="description" content="software of paie" />
        <meta name="author" content="ch" />
        <meta name="og:title" property="og:title" content="soft paie" />
        <meta name="twitter:card" content="soft paie" />
        <meta name="robots" content="index, follow" />
        <title> Inscription</title>
      </Head>

      <Mobile ui={ui} switchMode={switchMode}>
        {/* solution litte screen */}

        <div className="main">
          <Navbar />
          {loader && <Loader1 />}
          <Register1 switchMode={switchMode} />
        </div>

        <div className="bottom">
          <Footer fixed={false} />
        </div>
      </Mobile>
    </>
  );
}
