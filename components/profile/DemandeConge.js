/** @format */
import { motion } from "framer-motion";
import Button1 from "../buttons/Button1";
import DatePicker from "react-datepicker";
import React, { useState, useEffect } from "react";
import Head from "next/head";
import { useRouter } from "next/router";
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
    h3 {
      text-align: center;
      color: #888;
      letter-spacing: 0.5px;
      background-color: #fff;
      font-family: ${({ ui }) => ui.navFont};
      margin-bottom: 1rem;
      border:1px solid #ddd;
      padding:.3rem;
      border-radius:4px;
      box-shadow:1px 1px 6px 0.1px rgba(0, 0, 0, 0.1);
    }
  }
  .date_choice {
    display: flex;
    gap: 1rem;
    margin: 0.5rem 0rem 1rem 0rem;

    input {
      border: 1px solid #888;
      text-align: center;
      padding: 0.5rem;
      &:focus {
        border: 1px solid #888;
        outline: none;
      }
    }
  }

  label {
    display: block;
    font-size: 0.9rem;
    font-weight: 500;
  }
  .cp_area {
    padding: 1rem;
    max-width: 50%;
    margin-bottom: 1rem;
    border: 1px solid #aaa;
    &:focus {
      border: 1px solid #888;
      outline: none;
      padding: 1rem;
    }
  }
  .ui_response {
    position: absolute;
    // margin: auto;
    top: 23rem;
    left: 70rem;
    border-radius: 6px;
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.5);
    width: 30%;
    font-weight: 500;
    background-color: white;
    padding: 3rem;
    font-size: 2rem;
    font-family: ${({ ui }) => ui.navFont};
    text-align: center;
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
  const queryClient = useQueryClient();
  const router = useRouter();
  const { id } = router.query;
  const [prodMethods, prodStates] = ProdCtx();
  const { demandeCongeMethods, apiGet, apiDelete, apiUpdate } = prodMethods;
  const { apiDemandeCongePost } = demandeCongeMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;
  // console.log("user id ");
  // console.log(id);

  const [isOpen, setIsOpen] = useState(false);

  const [startDate, setStartDate] = useState();
  const [endDate, setEndDate] = useState();
  const [corpsDemande, setCorpsDemande] = useState();

  const [sectionSelector, setSectionSelector] = useState();

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
    fd.append("user_id", id);
    fd.append("active_state_employee", 1);
    fd.append("active_state_manager", 0);
    fd.append("validator_id", 0);
    // fd.append("_method", "put"); // spoof method laravel

    postDemandeConge(fd, cfg)
      .then((res) => {
        if (res.ok) {
       
          console.log(res.response, res.ok);
          console.log(res);
        } else {
         
        }
      })
      .catch((err) => console.log(err));

    setIsOpen(true);
    setStartDate("");
    setEndDate("");
    setCorpsDemande("");
  };

  const variants = {
    open: {
      opacity: 1,
      y: 0,
      scale: [1, 1.05, 1.1, 1.05, 1],
      transition: {
        type: "spring",
        stiffness: 2000,
      },
    },

    closed: { opacity: 0, y: "-100%" },
  };

  React.useEffect(() => {
    setTimeout(() => setIsOpen(false), 3000);

    return () => {
      console.log("");
    };
  }, [isOpen]);

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      {isOpen && (
        <motion.div
          animate={isOpen ? "open" : "closed"}
          variants={variants}
          className="ui_response"
        >
          Votre demande est enregistrée ✔️
        </motion.div>
      )}
      <form className="form_conge" action="" onSubmit={handleDemandeConge}>
        <h3>Demande de congé</h3>
        <div className="date_choice">
          <div className="start_date">
            <label htmlFor="start">Date de debut:</label>
            <input
              type="date"
              id="start"
              name="trip-start"
              value={startDate}
              min={new Date()}
              required
              onChange={(e) => setStartDate(e.target.value)}
            />
          </div>
          <div className="end_date">
            {" "}
            <label htmlFor="end">Date de fin:</label>
            <input
              required
              type="date"
              id="end"
              name="trip-end"
              min={new Date()}
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
          rows="9"
          cols="6"
         
        ></textarea>
        <Button1 type="submit" disabled={false} width={5} height={2.2}>
          valider
        </Button1>
      </form>
    </Mobile>
  );
};

export default DemandeConges;
