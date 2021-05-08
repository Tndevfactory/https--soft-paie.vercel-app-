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

const DemandeConge_st = styled(motion.div)`
  background-color: yellow;
  @media (max-width: 600px) {
    grid-template-columns: 1fr;
  }
`;

const DemandeConge = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { notification, setNotification, switchMode } = prodStates;

  const [sectionSelector, setSectionSelector] = useState("");

  return (
    <DemandeConge_st switchMode={switchMode}>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Explicabo
      quisquam eveniet velit dignissimos eaque quo obcaecati nesciunt voluptas
      a, laudantium fugit earum necessitatibus numquam porro deserunt neque.
      Cumque ex ad autem harum necessitatibus consectetur voluptatum
      exercitationem, explicabo, eum nam impedit, tempore repellendus rem. Optio
      similique vero explicabo, inventore quod consectetur.
    </DemandeConge_st>
  );
};

export default DemandeConge;
