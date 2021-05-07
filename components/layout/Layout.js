/** @format */

import React from "react";
import AppFooter from "../appFooter/AppFooter";
import AppHeader from "../appHeader/AppHeader";
import { ProdCtx } from "../../contexts/ProductsContext";
import styles from "./Layout.module.scss";
import Alert1 from "../alerts/Alert1";

const Layout = ({ children }) => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet } = prodMethods;
  const { switchMode, setSwitchMode } = prodStates;

  return (
    <>
      <AppHeader setSwitchMode={setSwitchMode} switchMode={switchMode} />

      <div className={switchMode ? styles.layout_dk : styles.layout_ctl}>
        <Alert1 />
        {children}
      </div>

      <AppFooter setSwitchMode={setSwitchMode} switchMode={switchMode} />
    </>
  );
};

export default Layout;
