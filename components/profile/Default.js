import React, { useState, useRef, useEffect } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import Image from "next/image";
import {
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaMugHot,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const device = {
  mobile: `(max-width: 600px)`,

  tablet: `(min-width: 601px)`,

  desktop: `(min-width: 900px)`,
};

const ui = {
  dark: "#001d3d",
  light: "#00afb9",
};
const easing = [0.04, 0.62, 0.23, 0.98];

const Default_st = styled(motion.div)`
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr;

  height: 100%;
  gap: 5px 5px;

  & > * {
    border: 2px solid
      ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.light) : chroma(ui.dark)};
    margin: 36px;
    border-radius: 12px;
    display: flex;
    justify-content: center;
    align-items: center;
    box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.3);
    transition: box-shadow 600ms ease;
    cursor: pointer;
    &:hover {
      box-shadow: 0px 1px 6px rgba(0, 0, 0, 0.6);
    }
    background: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.light) : chroma(ui.dark)};
    color: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.light).darken(1) : chroma(ui.dark).brighten(3)};
    .editer_profil_logo {
      font-weight: 600;
      display: block;
      font-size: 63px;
      text-align: center;
    }
    .editer_profil_title {
      font-weight: 600;
      display: block;
      font-size: 33px;
    }
  }
  .editer_profil {
  }
  .fiche_paie {
  }
  .calcul_salaire {
  }
  .demande_conge {
  }
  .gestion_reclamation {
  }
  .consulter_planification {
  }
  @media (max-width: 600px) {
  }
`;

const Default = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;
  const [sectionSelector, setSectionSelector] = useState("");

  return (
    <Default_st switchMode={switchMode} ui={ui}>
      <div className="editer_profil">
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Editer_ Profil</span>
        </div>
      </div>
      <div className="fiche_paie">
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Editer_ Profil</span>
        </div>
      </div>
      <div className="calcul_salaire">
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Editer_ Profil</span>
        </div>
      </div>
      <div className="demande_conge">
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Editer_ Profil</span>
        </div>
      </div>
      <div className="gestion_reclamation">
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Editer_ Profil</span>
        </div>
      </div>
      <div className="consulter_planification">
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Editer_ Profil</span>
        </div>
      </div>
    </Default_st>
  );
};

export default Default;
