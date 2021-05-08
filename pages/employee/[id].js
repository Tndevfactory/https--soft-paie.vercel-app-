import React, { useState, useRef, useEffect } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import Image from "next/image";
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

import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const device = {
  mobile: `(max-width: 600px)`,

  tablet: `(min-width: 601px)`,

  desktop: `(min-width: 900px)`,
};

const easing = [0.04, 0.62, 0.23, 0.98];

const Employee_st = styled(motion.div)`
  display: grid;
  grid-template-columns: 15% 1fr;
  height: 78vh;

  .side_bar {
    border-top: 2px solid
      ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.light) : chroma(ui.dark)};
    border-right: 2px solid
      ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.light) : chroma(ui.dark)};
    border-bottom: 2px solid
      ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.light) : chroma(ui.dark)};
    padding: 1rem 1rem;
    background-color: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.dark) : chroma(ui.light).darken(2)};

    .side_bar_row {
      display: flex;
      align-items: center;
      .side_bar_row_dateTime {
        color: white;
        margin: 20px 1px 20px 2px;
        .side_bar_row_dateTime_title {
          font-weight: 600;
          margin: 0px 12px 0px 12px;
        }
        .side_bar_row_dateTime_title {
        }
      }
      .side_bar_row_photoProfile {
        margin: 0px 3px 13px 7px;
        img {
          border-radius: 50%;
          width: 120%;
          height: 90px;
          border: 1px solid white;
        }
      }
      .side_bar_row_nameProfile {
        color: ${({ switchMode, ui }) =>
          switchMode
            ? chroma(ui.light).brighten(2)
            : chroma(ui.light).brighten(3)};
        margin: -5px 0px 0px 19px;
        text-transform: uppercase;
        font-weight: 700;
      }

      .side_bar_row_icon {
        color: ${({ switchMode, ui }) =>
          switchMode ? chroma(ui.light).brighten(2) : chroma(ui.dark)};
        font-size: 23px;
        margin: 9px 9px 2px 1px;
      }
      .side_bar_row_title {
        color: ${({ switchMode, ui }) =>
          switchMode
            ? chroma(ui.light).saturate(2)
            : chroma(ui.dark).brighten(4)};
        font-weight: 600;
        cursor: pointer;
        transition: color 500ms;
        &:hover {
          color: ${({ switchMode, ui }) =>
            switchMode
              ? chroma(ui.light).brighten(3)
              : chroma(ui.dark).brighten(6)};
        }
      }

      @media (max-width: 600px) {
      }
    }

    @media (max-width: 600px) {
      height: 50vh;
    }
  }
  .content {
    padding: 1rem 2rem;
    .content_details {
      height: 100%;
      @media (max-width: 600px) {
      }
    }
    @media (max-width: 600px) {
    }
  }
  @media (max-width: 600px) {
    grid-template-columns: 1fr;
  }
`;

const Profile = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;

  const [sectionSelector, setSectionSelector] = useState("");

  return (
    <Employee_st switchMode={switchMode} ui={ui}>
      <div className="side_bar">
        <div className="side_bar_row">
          <span className="side_bar_row_dateTime">
            <span className="side_bar_row_dateTime_title">Date:</span>
            <span className="side_bar_row_dateTime_date">
              {format(new Date(), "dd-MM-yyyy' 'HH:mm:ss")}{" "}
            </span>
          </span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_photoProfile">
            <img src="/img/profil/profil.jpg" />
          </span>
          <span className="side_bar_row_nameProfile">Karim Ben Amor</span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_icon">
            <FaUser />
          </span>
          <span
            className="side_bar_row_title"
            onClick={() => setSectionSelector("editer_profil")}
          >
            {" "}
            Editer Profil
          </span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_icon">
            <FaRegListAlt />
          </span>
          <span
            className="side_bar_row_title"
            onClick={() => setSectionSelector("fiche_paie")}
          >
            Fiche de Paie{" "}
          </span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_icon">
            <FaRegMoneyBillAlt />
          </span>
          <span
            className="side_bar_row_title"
            onClick={() => setSectionSelector("calcul_salaire")}
          >
            Calcul Salaire{" "}
          </span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_icon">
            <FaSkating />
          </span>
          <span
            className="side_bar_row_title"
            onClick={() => setSectionSelector("demande_conge")}
          >
            Demande de Congé{" "}
          </span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_icon">
            <FaRecycle />
          </span>
          <span
            className="side_bar_row_title"
            onClick={() => setSectionSelector("gestion_reclamation")}
          >
            Gestion Réclamations
          </span>
        </div>
        <div className="side_bar_row">
          <span className="side_bar_row_icon">
            <FaParking />
          </span>
          <span
            className="side_bar_row_title"
            onClick={() => setSectionSelector("consulter_planification")}
          >
            Consulter Planification
          </span>
        </div>
      </div>
      <div className="content">
        <div className="content_details">
          {sectionSelector === "editer_profil" ? (
            <EditerProfil />
          ) : sectionSelector === "fiche_paie" ? (
            <FichePaie />
          ) : sectionSelector === "calcul_salaire" ? (
            <CalculSalaire />
          ) : sectionSelector === "demande_conge" ? (
            <DemandeConge />
          ) : sectionSelector === "gestion_reclamation" ? (
            <Reclamation />
          ) : sectionSelector === "consulter_planification" ? (
            <Planification />
          ) : (
            <Default
              sectionSelector={sectionSelector}
              setSectionSelector={setSectionSelector}
            />
          )}
        </div>
      </div>
    </Employee_st>
  );
};

export default Profile;
