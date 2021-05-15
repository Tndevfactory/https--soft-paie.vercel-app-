/** @format */
import { motion } from "framer-motion";
import React, {useState} from "react";
import Head from "next/head";
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

import FichePaie from "../../components/profile/FichePaie";
import CalculSalaire from "../../components/profile/CalculSalaire";
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
  min-height: 82vh;
  padding: 6rem 0rem 1rem 0rem;
  display: flex;

  & > * {
    display: inline-block;
    min-height: 66vh;
    border-radius: 5px;
    padding: 2rem;
  }

  .fixed-drawer {
    background: green;
    min-width: 15%;
    margin: 0rem .5rem 0rem 0.5rem;
  }

  .dash-content {
    min-height: 66vh;
    background: white;
    min-width: 83%;
  }
`;

const Mobile = styled(Desktop)`
  @media (min-width: 375px) and (max-width: 600px) {
    padding: 9rem 0rem 1rem 0rem;
  }

  @media (min-width: 361px) and (max-width: 374px) {
    padding: 9rem 0rem 1rem 0rem;
  }
  @media (max-width: 360px) {
    padding: 9rem 0rem 1rem 0rem;
  }
`;

// export const getServerSideProps = async () => {
//   const dt = await apiGet();

//   return { props: { dt } };
// };{ dt }

export default function Dashboard1() {
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
  const [ selectSection, setSelectSection ] = useState('')
  
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

      <Mobile ui={ui} switchMode={switchMode}>
        <aside className="fixed-drawer">
          <div className="date">date</div>
          <div className="date">
            <Image src='/img/profil/profil.jpg' height={ 45 } width={ 45 } />
          </div>
          <div className="date">link1</div>
          <div className="date">link2</div>
          <div className="date">link3</div>
          <div className="date">link4</div>
        </aside>
        <div className="dash-content">
          <div className="bread-crumb">bread//</div>
          
          {selectSection ==='' && <div className="content"><Default/></div>}
          {selectSection ==='salaire' && <div className="content">salaire</div>}
          {selectSection ==='conge' && <div className="content">salaire</div>}
          {selectSection ==='reclamation' && <div className="content">salaire</div>}
          {selectSection ==='fiche de paie' && <div className="content">salaire</div>}
        </div>
      </Mobile>
    </>
  );
}
