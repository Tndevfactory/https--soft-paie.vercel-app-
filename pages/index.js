/** @format */
import { motion } from "framer-motion";
import React from "react";
import Head from "next/head";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../contexts/ProductsContext";
import { Device } from "../components/devices/Device";
import Login1 from "../components/logins/Login1";
import chroma from "chroma-js";

import Alert1 from "../components/alerts/Alert1";
import Loader from "../components/loader/Loader1";
import Footer from "../components/footer/Footer";
import Navbar from "../components/navbar/Navbar";

const Desktop = styled(motion.div)`
   display: flex;
  justify-content: center;
  align-items: center;
  flex-flow: column nowrap;
 
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    margin-top: 0rem;
  }
`;

// export const getServerSideProps = async () => {
//   const dt = await apiGet();

//   return { props: { dt } };
// };{ dt }

export default function Home() {
  const queryClient = useQueryClient();
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet } = prodMethods;
  const { ui, switchMode } = prodStates;

  // const { isLoading, error, data } = useQuery("products", apiGet, {
  //   initialData: dt,
  //   initialStale: true,
  // });

  // const mDelete = useMutation((id) => apiDelete(id), {
  //   onSuccess: () => queryClient.invalidateQueries("products"),
  // });

  // const mUpdate = useMutation((values) => apiUpdate(values));

  // if (isLoading) return <div>loading ...</div>;

  // if (error) return "An error has occurred: " + error.message;

  // if (mDelete.isError) return "An error has occurred: " + mDelete.error.message;

  return (
    <>
      <Head>
        <meta name="description" content="software of paie" />
        <meta name="author" content="ch" />
        <meta name="og:title" property="og:title" content="soft paie" />
        <meta name="twitter:card" content="soft paie" />
        <meta name="robots" content="index, follow" />
        <title> Connexion</title>
      </Head>

      <Mobile ui={ui} switchMode={switchMode}>
        <Navbar />

        <Login1 switchMode={switchMode} />

        <Footer fixed={true} />
      </Mobile>
    </>
  );
}
