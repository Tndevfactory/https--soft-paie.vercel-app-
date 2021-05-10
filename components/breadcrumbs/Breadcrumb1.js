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

const Breadcrumb_st = styled(motion.div)`
  .breadcrumb {
    .breadcrumb_root {
      font-weight: 500;
      text-transform: capitalize;
      letter-spacing: 1px;
    }
    .breadcrumb_slash {
      margin: 0px 5px;
    }
    .breadcrumb_active {
      color: ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.light).darken(1) : chroma(ui.dark).brighten(1)};
    }
  }

  @media (max-width: 600px) {
    grid-template-columns: 1fr;
  }
`;

const Breadcrumb1 = ({ content }) => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;

  return (
    <Breadcrumb_st ui={ui} content={content} switchMode={switchMode}>
      <div className="breadcrumb">
        <span className="breadcrumb_root">{content.root}</span>
        <span className="breadcrumb_slash">/</span>
        <span className="breadcrumb_active">{content.active}</span>
      </div>
    </Breadcrumb_st>
  );
};

export default Breadcrumb1;
