/** @format */
import { motion } from "framer-motion";
import React, { useState } from "react";
import Head from "next/head";

import Cookies from "js-cookie";
import { useRouter } from "next/router";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import { Device } from "../../components/devices/Device";
import Register1 from "../../components/registers/Register1";
import Alert1 from "../../components/alerts/Alert1";
import Loader from "../../components/loader/Loader1";
import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";
import Image from "next/image";
import Link from "next/link";
import chroma from "chroma-js";

import { format, compareAsc } from "date-fns";
import Dashboard3 from "../../components/dashboard/Dashboard3";
import FichePaie from "../../components/profile/FichePaie";
import Information from "../../components/profile/Information";
import DemandeConge from "../../components/profile/DemandeConge";
import EditerProfil from "../../components/profile/EditerProfil";
import Planification from "../../components/profile/Planification";
import Reclamation from "../../components/profile/Reclamation";
import Default from "../../components/profile/Default";
import {
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-width: 100%;
  min-height: 100vh;
  //background-color:coral;

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

// export const getServerSideProps = async () => {
//   const dt = await apiGet();

//   return { props: { dt } };
// };{ dt }

export default function Admin() {
  const queryClient = useQueryClient();
  const router = useRouter();
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet } = prodMethods;
  const { loader, setLoader, ui, switchMode } = prodStates;

  const [check, setCheck] = useState({
    id: Cookies.get("sp_id"),
    role: Cookies.get("sp_role"),
    token: Cookies.get("sp_token"),
  });

  React.useEffect(() => {
    if (Number(check.id) !== 3) {
      router.push("/");
    }
    return () => console.log("");
  }, []);
  return (
    <>
      <Head>
        <meta name="description" content="software of paie" />
        <meta name="author" content="ch" />
        <meta name="og:title" property="og:title" content="soft paie" />
        <meta name="twitter:card" content="soft paie" />
        <meta name="robots" content="index, follow" />
        <title> Admin</title>
      </Head>

      <Mobile ui={ui} switchMode={switchMode}>
        <Navbar />

        <Dashboard3 switchMode={switchMode} />
        <Footer fixed={false} />
      </Mobile>
    </>
  );
}
