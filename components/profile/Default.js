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


const easing = [0.04, 0.62, 0.23, 0.98];

const Desktop = styled(motion.div)`
 
  & > * {
    display: inline-block;
   
    border-radius: 5px;
    padding: 2rem;
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

const Defaultss = ({ setSectionSelector }) => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <div
        className="editer_profil"
        onClick={() => setSectionSelector("editer_profil")}
      >
        <div>
          <span className="editer_profil_logo">
            <FaUser />
          </span>
          <span className="editer_profil_title">Editer Profil</span>
        </div>
      </div>
      <div
        className="fiche_paie"
        onClick={() => setSectionSelector("fiche_paie")}
      >
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegListAlt />
          </span>
          <span className="editer_profil_title">Fiche de Paie</span>
        </div>
      </div>
      <div
        className="calcul_salaire"
        onClick={() => setSectionSelector("calcul_salaire")}
      >
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRegMoneyBillAlt />
          </span>
          <span className="editer_profil_title">Calcul de Salaire</span>
        </div>
      </div>
      <div
        className="demande_conge"
        onClick={() => setSectionSelector("demande_conge")}
      >
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaSkating />
          </span>
          <span className="editer_profil_title">Demande de Conge</span>
        </div>
      </div>
      <div
        className="gestion_reclamation"
        onClick={() => setSectionSelector("gestion_reclamation")}
      >
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaRecycle />
          </span>
          <span className="editer_profil_title">Gestion de Reclamation</span>
        </div>
      </div>
      <div
        className="consulter_planification"
        onClick={() => setSectionSelector("consulter_planification")}
      >
        {" "}
        <div>
          <span className="editer_profil_logo">
            <FaParking />
          </span>
          <span className="editer_profil_title">Consulter Planification</span>
        </div>
      </div>
    </Mobile>
  );
};

export default Defaultss;
