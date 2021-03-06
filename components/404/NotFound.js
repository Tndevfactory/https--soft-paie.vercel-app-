/** @format */
import { motion } from "framer-motion";
import Head from "next/head";

import styled, { css } from "styled-components";

import React, { useState } from "react";
import { useRouter } from "next/router";
import chroma from "chroma-js";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

import { FaChevronLeft, FaRegArrowAltCircleLeft } from "react-icons/fa";

const Desktop = styled(motion.div)`
  display: flex;
  justify-content: center;
  gap: 3rem;
  align-items: center;
  flex-flow: column nowrap;
`;

const Mobile = styled(Desktop)`
  .back {
    color: pink;
    cursor: pointer;
  }
  .back_icon {
    color: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.dark) : chroma(ui.light)};
    font-size: 0.9em;
  }
  .back_text {
    color: #222;
    margin-left: 4px;
    transition: all 0.5s;
    &:hover {
      text-shadow: 0.51px 0.41px 0.91px rgba(0, 0, 0, 0.5);
    }
  }
  @media (min-width: 361px) and (max-width: 600px) {
    margin-top: 0.5rem;
  }
  @media (max-width: 360px) {
    margin-top: 0.5rem;
  }
`;

export default function NotFound() {
  const router = useRouter();
  const [prodMethods, prodStates] = ProdCtx();
  const { apiUpdate } = prodMethods;
  const { ui, setUi, switchMode, setSwitchMode } = prodStates;
  return (
    <>
      <Head>
        <meta name="description" content="software of paie" />
        <meta name="author" content="ch" />
        <meta name="og:title" property="og:title" content="soft paie" />
        <meta name="twitter:card" content="soft paie" />
        <meta name="robots" content="index, follow" />
        <title> 404</title>
      </Head>

      <Mobile ui={ui} switchMode={switchMode}>
        <p>
          <h2>Ops ! 404 page introuvable</h2>

          <h2 className="back" onClick={() => router.back()}>
            <FaRegArrowAltCircleLeft className="back_icon" />
            <span className="back_text">Retour sur site</span>
          </h2>
        </p>
      </Mobile>
    </>
  );
}
