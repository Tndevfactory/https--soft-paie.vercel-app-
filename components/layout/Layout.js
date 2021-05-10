/** @format */
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import React from "react";
import Footer from "../footer/Footer";
import Navbar from "../navbar/Navbar";
import { ProdCtx } from "../../contexts/ProductsContext";
import Alert1 from "../alerts/Alert1";
import Loader from "../loader/Loader1";
import { Device } from "../devices/Device";

const Desktop = styled(motion.div)`
  background: ${({ switchMode, ui }) =>
    switchMode ? chroma("#ddd").darken(1) : chroma("#ddd")};
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
  }
`;

const Layout = ({ children }) => {
  const [prodMethods, prodStates] = ProdCtx();
  const {} = prodMethods;
  const {
    ui,
    loader,
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
  } = prodStates;
  // console.log("loader");
  // console.log(loader);
  return (
    <>
      <Navbar />

      <main>
        <Mobile ui={ui} switchMode={switchMode}>
          {notification.notifType !== "" ? <Alert1 /> : null}
          {loader ? <Loader /> : null}

          {children}
        </Mobile>
      </main>

      <Footer setSwitchMode={setSwitchMode} switchMode={switchMode} />
    </>
  );
};

export default Layout;
