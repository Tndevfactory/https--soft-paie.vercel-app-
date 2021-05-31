/** @format */
import { motion } from "framer-motion";
import Button1 from "../buttons/Button1";

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
import Select from "react-select";

import {
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";

const options = [
  { value: "1", label: "Erreur salaire" },
  { value: "2", label: "Retard de versement" },
  { value: "3", label: "Information erronee" },
];

const Desktop = styled(motion.div)`
  min-width: 70vw;

  .form_reclamation {
    display: flex;
    flex-flow: column nowrap;
    gap: 5px;
  }
  .reclamation_type {
    max-width: 40%;
    gap: 1rem;
    margin: 0.5rem 0rem 1rem 1rem;
  }
  .reclamation_select {
    padding: 0.5rem;
    margin-left: 1rem;
    text-align: center;
    border: 1px solid #aaa;
    &:focus {
      outline: none;
      border: 1px solid #888;
    }
  }
  .reclamation_raison {
    max-width: 50%;
    display: flex;
    flex-flow: column nowrap;
    margin-bottom: 1rem;
    .reclamation_area {
      padding: 1.1rem;
      border: 1px solid #aaa;
      &:focus {
        outline: none;
        border: 1px solid #888;
      }
    }
  }
`;

const Mobile = styled(Desktop)`
  //large screen
  @media (min-width: 1920px) {
  }

  @media (min-width: 1536px) and (max-width: 1919px) {
  }

  @media (min-width: 1440px) and (max-width: 1535px) {
  }
  @media (min-width: 1366px) and (max-width: 1439px) {
  }
  @media (min-width: 1280px) and (max-width: 1365px) {
  }

  //mobile
  @media (min-width: 375px) and (max-width: 600px) {
  }

  @media (min-width: 361px) and (max-width: 374px) {
  }
  @media (max-width: 360px) {
  }
`;

const Reclamation = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { demandeReclamationMethods, apiGet, apiDelete, apiUpdate } = prodMethods;
  const { apiDemandeReclamationPost} = demandeReclamationMethods;

  const { ui, notification, setNotification, switchMode } = prodStates;

  const [sectionSelector, setSectionSelector] = useState("");

  const [reclamationType, setReclamationType] = useState();
  const [reclamationCorps, setReclamationCorps] = useState();

  let cfg = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };

  const postDemandeReclamation = async (fd, cfg) => {
    let res = await apiDemandeReclamationPost(fd, cfg);
    // queryClient.invalidateQueries("crud-admin");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  
  const fd = new FormData();

  const handleDemandeReclamation = (e) => {
    e.preventDefault();
    fd.append("reclamationType", reclamationType);
    fd.append("reclamationCorps", reclamationCorps);
    
    // fd.append("_method", "put"); // spoof method laravel

    postDemandeReclamation(fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          //  setUpdRes({
          //     ok: res.ok,
          //     response2: "Impossible d'éffectuer la modification",
          //   });
        }
      })
      .catch((err) => console.log(err));
  };
  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <form className="form_reclamation" onSubmit={handleDemandeReclamation} action="">
        <h3>Deposer une reclamation</h3>
        <div className="reclamation_type">
          <label htmlFor="">Motif:</label>
          <select
            value={reclamationType}
            name=""
            id=""
            className="reclamation_select"
            onChange={(e) => setReclamationType(e.target.value)}
          >
            {options.map((item) => (
              <option value={item.value}>{item.label}</option>
            ))}
          </select>
        </div>
        <div className="reclamation_raison">
          <label htmlFor="">Raison:</label>
          <textarea
            className="reclamation_area"
            id="recla"
            name="recla"
            rows="4"
            cols="5"
            value={reclamationCorps}
            onChange={(e) => setReclamationCorps(e.target.value)}
          ></textarea>
        </div>
        <Button1 type="submit" disabled={false} width={5} height={2.2}>
          valider
        </Button1>
      </form>
    </Mobile>
  );
};

export default Reclamation;
