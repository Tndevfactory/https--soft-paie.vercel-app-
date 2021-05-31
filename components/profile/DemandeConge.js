/** @format */
import { motion } from "framer-motion";
import Button1 from "../buttons/Button1";
import DatePicker from "react-datepicker";
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

import {
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-width: 70vw;

  .form_conge {
    display: flex;
    flex-flow: column nowrap;
    gap: 5px;
  }
  .date_choice {
    display: flex;
    gap: 1rem;
    margin: 0.5rem 0rem 1rem 0rem;

    input {
      border: 1px solid #888;
      text-align: center;
    }
  }

  label {
    display: block;
  }
  .cp_area {
    padding: 1rem;
    max-width: 50%;
    margin-bottom: 1rem;
    border: 1px solid #888;
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

const DemandeConges = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { demandeCongeMethods, apiGet, apiDelete, apiUpdate } = prodMethods;
  const { apiDemandeCongePost } = demandeCongeMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;

  const [startDate, setStartDate] = useState();
  const [endDate, setEndDate] = useState();
  const [corpsDemande, setCorpsDemande] = useState("");

  const [sectionSelector, setSectionSelector] = useState("");

  let cfg = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };

  const postDemandeConge = async (fd, cfg) => {
    let res = await apiDemandeCongePost(fd, cfg);
    // queryClient.invalidateQueries("crud-admin");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  const fd = new FormData();

  const handleDemandeConge = (e) => {
    e.preventDefault();
    fd.append("startDate", startDate);
    fd.append("endDate", endDate);
    fd.append("corpsDemande", corpsDemande);
    // fd.append("_method", "put"); // spoof method laravel

    postDemandeConge(fd, cfg)
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
      <form className="form_conge" action="" onSubmit={handleDemandeConge}>
        <h3>Deposer un conge</h3>
        <div className="date_choice">
          <div className="start_date">
            <label htmlFor="start">Date de debut:</label>
            <input
              type="date"
              id="start"
              name="trip-start"
              value={startDate}
              // min={new Date()}
              onChange={(e) => setStartDate(e.target.value)}
            />
          </div>
          <div className="end_date">
            {" "}
            <label htmlFor="end">Date de fin:</label>
            <input
              type="date"
              id="end"
              name="trip-end"
              value={endDate}
              // min={new Date()}
              onChange={(e) => setEndDate(e.target.value)}
            />
          </div>
        </div>
        <label htmlFor="">Motif:</label>
        <textarea
          value={corpsDemande}
          onChange={(e) => setCorpsDemande(e.target.value)}
          className="cp_area"
          id="cp"
          name="cp"
          rows="4"
          cols="5"
        >
         
        </textarea>
        <Button1 type="submit" disabled={false} width={5} height={2.2}>
          valider
        </Button1>
      </form>
    </Mobile>
  );
};

export default DemandeConges;
