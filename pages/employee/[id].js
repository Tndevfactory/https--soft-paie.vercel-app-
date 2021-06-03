/** @format */
import { motion } from "framer-motion";
import React, { useState } from "react";
import Head from "next/head";

import styled, { css } from "styled-components";
import { ProdCtx, apiProfileShowOne } from "../../contexts/ProductsContext";

import { useRouter } from "next/router";


import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";

import Dashboard1 from "../../components/dashboard/Dashboard1";


const Desktop = styled(motion.div)`
  min-width: 100%;
  min-height: 100vh;
  display: flex;
  // justify-content: center;
  //align-items: center;
  flex-flow: column nowrap;
`;

const Mobile = styled(Desktop)`
  @media (min-width: 361px) and (max-width: 600px) {
    margin-top: 0.5rem;
  }
  @media (max-width: 360px) {
    margin-top: 0.5rem;
  }
`;

export async function getServerSideProps({ params: { id } }) {
  const initialData = await apiProfileShowOne(id);

  //const initialData = await axios.get(`/profiles/${id}`);
  return { props: { initialData } };
}

export default function Profile({ initialData }) {
  console.log("inside empl page employee redirect");
  console.log(initialData);
  
  const router = useRouter();
  const [prodMethods, prodStates] = ProdCtx();
  const { profilMethods } = prodMethods;
  const { apiProfileShowOne } = profilMethods;

  const {
    initialDataHotssr1,
    setInitialDataHotssr1,
    loader,
    setLoader,
    ui,
    switchMode,
  } = prodStates;

  // setInitialDataHotssr1(initialData);
  // // console.log("initialData");
  // // console.log(initialDataHotssr);
  // // console.log("initialData-------------home login page--index.js");
  // // console.log(initialData);
  // // console.log("initialDataHotssr1-------------home login page--index.js");
  // // console.log(initialDataHotssr1);
  return (
    <>
      <Head>
        <meta name="description" content="software of paie" />
        <meta name="author" content="ch" />
        <meta name="og:title" property="og:title" content="soft paie" />
        <meta name="twitter:card" content="soft paie" />
        <meta name="robots" content="index, follow" />
        <title> Employee</title>
      </Head>
      {/* ui={ui} switchMode={switchMode} */}
      <Mobile>
        <Navbar />
        {/* {loader && <Loader1 />} */}
        <Dashboard1 switchMode={switchMode} />
        <Footer fixed={false} />
       
      </Mobile>
    </>
  );
}
