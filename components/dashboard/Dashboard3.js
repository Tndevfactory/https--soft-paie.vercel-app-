/** @format */
import { motion } from "framer-motion";
import React, { useState } from "react";
import Head from "next/head";
import Breadcrumb1 from "../breadcrumbs/Breadcrumb1";
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
import Information from "../../components/profile/Information";
import DemandeConge from "../../components/profile/DemandeConge";
import EditerProfil from "../../components/profile/EditerProfil";
import Planification from "../../components/profile/Planification";
import Reclamation from "../../components/profile/Reclamation";
import Default from "../../components/profile/Default";
import {
  FaUserShield,
  FaUserTie,
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";

const Desktop = styled(motion.div)`
  padding: 6rem 0rem 1rem 0rem;
  display: flex;

  & > * {
    //display: inline-block;
    //min-height: 65vh;
    border-radius: 5px;
    padding: 0.5rem 2rem;
  }

  .fixed-drawer {
    background: rgba(255, 255, 255, 0.9);
    min-width: 15%;
    margin: 0rem 0.5rem 0rem 0.5rem;
  }
  .admin {
    display: flex;
    margin: 1rem 0rem;
    gap: 7px;
    font-weight: 700;
    text-transform: uppercase;
    font-family: ${({ ui }) => ui.navFont};
    font-size: 1.5rem;
    color: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.dark) : chroma(ui.light)};
    position: relative;
    &:after {
      position: absolute;
      bottom: 0;
      height: 5px;
      width: 165px;
      background: red;
      border-right: 1px white;
      content: "";
    }
  }

  .admin_logo {
  }
  .admin_title {
  }

  .img-profile {
    width: 40%;
  }
  .img {
    border-radius: 50%;
  }
  .date {
    margin: 1rem 0rem 1rem 0.5rem;
    .date_label {
      font-weight: 600;
    }
  }
  .section {
    margin: 1rem 0rem 0.5rem 0rem;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    gap: 7px;
    cursor: pointer;
    &:hover {
      color: ${({ switchMode, ui }) =>
        switchMode
          ? chroma(ui.dark).luminance() < 0.4
            ? chroma(ui.dark).brighten(1)
            : chroma(ui.dark).darken(1)
          : chroma(ui.light).luminance() < 0.4
          ? chroma(ui.light).brighten(1)
          : chroma(ui.light).darken(1)};
    }
  }
  .fiche_de_paie {
  }

  .bread-crumb {
    margin: 1rem 0rem 1rem 0.5rem;
  }
  .dash-content {
    // min-height: 66vh;
    background: rgba(255, 255, 255, 0.9);
    min-width: 83%;
  }
  .dash-content-place {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .component {
    align-self: flex-start;
  }
`;

const Mobile = styled(Desktop)`
  //large screen
  @media (min-width: 1920px) {
    & > * {
      min-height: 71vh;
    }
    .fixed-drawer {
      min-width: 18%;
      margin: 0rem 0.5rem 0rem 0.5rem;
    }
    .manager {
      margin: 1rem 0rem;
      gap: 7px;
      font-weight: 700;
      font-size: calc(1.2 * 1.4 * 100%);

      &:after {
        bottom: 0;
        height: 5px;
        width: calc(0.72 * 1.1 * 100%);
      }
    }
    .img-profile {
      width: 40%;
    }
    .date {
      font-size: calc(0.72 * 1.4 * 100%);
      margin: 1rem 0rem 1rem 0.5rem;
    }
    .section {
      margin: 1rem 0rem 0.5rem 0rem;
      gap: 7px;
      font-size: calc(0.72 * 1.4 * 100%);
    }
    .bread-crumb {
      margin: 1rem 0rem 1rem 0.5rem;
    }
    .dash-content {
      min-width: 83%;
    }
  }

  @media (min-width: 1536px) and (max-width: 1919px) {
    & > * {
      min-height: 68vh;
    }
  }

  @media (min-width: 1440px) and (max-width: 1535px) {
    & > * {
      min-height: 69vh;
    }
  }
  @media (min-width: 1366px) and (max-width: 1439px) {
    & > * {
      min-height: 68vh;
    }
    .fixed-drawer {
      min-width: 18%;
      margin: 0rem 0.5rem 0rem 0.5rem;
    }
    .manager {
      margin: 1rem 0rem;
      gap: 7px;
      font-weight: 700;
      font-size: calc(1.2 * 1 * 100%);

      &:after {
        bottom: 0;
        height: 5px;
        width: calc(0.72 * 1.25 * 100%);
      }
    }
    .img-profile {
      width: 40%;
    }
    .date {
      font-size: calc(0.72 * 1.1 * 100%);
      margin: 1rem 0rem 1rem 0.5rem;
    }
    .section {
      margin: 1rem 0rem 0.5rem 0rem;
      gap: 7px;
      font-size: calc(0.72 * 1.25 * 100%);
    }
    .bread-crumb {
      margin: 1rem 0rem 1rem 0.5rem;
    }
    .dash-content {
      min-width: 83%;
    }
  }
  @media (min-width: 1280px) and (max-width: 1365px) {
    & > * {
      min-height: 65vh;
    }
  }

  //mobile
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

export default function Dashboard3() {
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
  const [selectSection, setSelectSection] = useState("");

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
          <div className="admin">
            <div className="admin_logo">
              <FaUserTie />
            </div>
            <div className="admin_title">admin zone</div>
          </div>
          <div className="date">
            <span className="date_label">Date:</span>{" "}
            {format(new Date(), "dd-MM-yyyy' 'HH:mm:ss")}
          </div>
          <div className="img-profile">
            <Image
              src="/img/profil/profil.jpg"
              alt="Picture of something nice"
              layout="responsive"
              quality={65}
              height={30}
              width={30}
              className="img"
            />
          </div>
          <div
            className="section editer_profil "
            onClick={() => setSelectSection("profil")}
          >
            <FaUser />
            <span>Editer profil</span>
          </div>
          <div
            className="section fiche_de_paie "
            onClick={() => setSelectSection("paie")}
          >
            <FaRegListAlt />
            <span>Fiche de paie</span>
          </div>
          <div
            className="section conge "
            onClick={() => setSelectSection("conge")}
          >
            <FaSkating />
            <span>Demander conge</span>
          </div>
          <div
            className="section reclamation "
            onClick={() => setSelectSection("reclamation")}
          >
            <FaRecycle />
            <span>Deposer reclamation</span>
          </div>
          <div
            className="section planification "
            onClick={() => setSelectSection("planification")}
          >
            <FaParking />
            <span>Planification</span>
          </div>
          <div
            className="section information "
            onClick={() => setSelectSection("informations")}
          >
            <FaRegMoneyBillAlt />
            <span>Information</span>
          </div>
        </aside>
        <div className="dash-content">
          <div className="bread-crumb">
            <Breadcrumb1
              setSelectSection={setSelectSection}
              content={{ root: "admin", active: selectSection }}
            />
          </div>
          <div className="dash-content-place">
            {selectSection === "" && (
              <div className="component_default">
                <Default setSelectSection={setSelectSection} />
              </div>
            )}
            {selectSection === "informations" && (
              <div className="component component_informations">
                <Information />
              </div>
            )}
            {selectSection === "conge" && (
              <div className="component component_conge">
                <DemandeConge />
              </div>
            )}
            {selectSection === "reclamation" && (
              <div className="component component_reclamation">
                <Reclamation />
              </div>
            )}
            {selectSection === "paie" && (
              <div className="component component_paie">
                <FichePaie />
              </div>
            )}
            {selectSection === "planification" && (
              <div className="component component_planification">
                <Planification />
              </div>
            )}
            {selectSection === "profil" && (
              <div className="component component_profil">
                <EditerProfil />
              </div>
            )}
          </div>
        </div>
      </Mobile>
    </>
  );
}
