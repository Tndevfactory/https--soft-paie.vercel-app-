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
  const {
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
  } = prodStates;

  React.useEffect(() => {
    setTimeout(() => {
      setNotification({
        notifType: "",
        notifMsg: "",
      });
    }, 3000);
  }, [notification]);

  return (
    <>
      <AppHeader setSwitchMode={setSwitchMode} switchMode={switchMode} />

      <div className={switchMode ? styles.layout_dk : styles.layout_ctl}>
        {notification.notifType !== "" ? <Alert1 /> : null}

        {children}
      </div>

      <AppFooter setSwitchMode={setSwitchMode} switchMode={switchMode} />
    </>
  );
};

export default Layout;
