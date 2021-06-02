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
import { useRouter } from "next/router";
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
    h3 {
      text-align: center;
      color: #888;
      letter-spacing: 0.5px;
      background-color: #fff;
      font-family: ${({ ui }) => ui.navFont};
      margin-bottom: 1rem;
      border: 1px solid #ddd;
      padding: 0.3rem;
      border-radius: 4px;
      box-shadow: 1px 1px 6px 0.1px rgba(0, 0, 0, 0.1);
    }
  }
  input {
    border: 1px solid #888;
    text-align: center;
    padding: 0.5rem;
    &:focus {
      border: 1px solid #888;
      outline: none;
    }
  }
  label {
    display: block;
    font-size: 0.9rem;
    font-weight: 500;
  }
  .reclamation_type {
    max-width: 40%;
    gap: 1rem;
    //margin: 0.5rem 0rem 1rem 1rem;
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
        border: 1px solid #888;
        outline: none;
        padding: 1rem;
      }
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

const Reclamation = () => {
  const queryClient = useQueryClient();
  const router = useRouter();
  const { id } = router.query;

  const [prodMethods, prodStates] = ProdCtx();
  const { demandeReclamationMethods, apiGet, apiDelete, apiUpdate } =
    prodMethods;
  const { apiDemandeReclamationPost } = demandeReclamationMethods;

  const { ui, notification, setNotification, switchMode } = prodStates;

  const [sectionSelector, setSectionSelector] = useState("");
  const [isOpen, setIsOpen] = useState(false);
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
    fd.append("user_id", id);
    
    // fd.append("_method", "put"); // spoof method laravel

    postDemandeReclamation(fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
        }
      })
      .catch((err) => console.log(err));

      setIsOpen(true);
      setReclamationType("");
      setReclamationCorps("");
     
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

      <form
        className="form_reclamation"
        onSubmit={handleDemandeReclamation}
        action=""
      >
        <h3>Déposer une reclamation</h3>
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
