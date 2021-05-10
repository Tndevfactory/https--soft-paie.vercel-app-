/** @format */

import Switch from "../switch/Switch";
import React, { useState, useRef, useEffect } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import Image from "next/image";
import Drawer from "../drawer/Drawer1";
import { FaCog, FaSignInAlt, FaBars } from "react-icons/fa";

import { ProdCtx } from "../../contexts/ProductsContext";

const Desktop = styled(motion.div)`
  color: ${({ switchMode, ui }) =>
    switchMode
      ? chroma(ui.dark).luminance() < 0.4
        ? chroma(ui.dark).brighten(4)
        : chroma(ui.dark).darken(3)
      : chroma(ui.light).luminance() < 0.4
      ? chroma(ui.light).brighten(4)
      : chroma(ui.light).darken(3)};

  background: ${({ switchMode, ui }) =>
    switchMode ? chroma(ui.dark).darken(1) : chroma(ui.light).brighten(1)};

  font-family: ${({ ui }) => ui.navFont};
  padding: 1rem;
  font-weight: 600;
  font-size: 2em;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  text-shadow: 0px 1px 1px rgba(0, 0, 0, 0.5);
`;

const Mobile = styled(Desktop)``;

const Navbar = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const {
    ui,
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
  } = prodStates;
  //console.log(ui);
  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <Drawer />
      <Link href="/">
        <a title="index">
          <span>soft-paie</span>
        </a>
      </Link>
      <Switch />
      <Link href="/config">
        <a title="configuration">
          <FaCog />
        </a>
      </Link>
      <Link href="/">
        <a title="login">
          <FaSignInAlt />
        </a>
      </Link>
    </Mobile>
  );
};

export default Navbar;
