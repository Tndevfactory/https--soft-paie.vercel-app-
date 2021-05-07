/** @format */
import React, { useState } from "react";
import { Switch } from "antd";

import styles from "./Header.module.scss";
import { AiOutlineLogin } from "react-icons/ai";
import Image from "next/image";
import Link from "next/link";

const AppHeader = ({ switchMode, setSwitchMode }) => {
  const [current, setCurrent] = useState("mail");

  const onChange = (checked) => {
    setSwitchMode(checked);
  };

  return (
    <div className={switchMode ? styles.navbar_dk : styles.navbar_ctl}>
      <div className={styles.brand_area}>
        <div className={styles.brand_txt}>
          <Link href="/">
            <a>
              <span className={styles.brand_txt_txt}>Soft-Paie</span>
            </a>
          </Link>
        </div>
        <div>
          <Image src="/img/logo.png" alt="logo" width={35} height={35} />
        </div>
      </div>
      <div className={styles.login_area}>
        <Link href="/">
          <a>
            <div className={styles.login_txt_seconnecter}>Se Connecter</div>
          </a>
        </Link>
        <div className={styles.login_logo}>
          <Link href="/">
            <a>
              <AiOutlineLogin className={styles.login_logo_componenent} />
            </a>
          </Link>
        </div>
        <div className={styles.login_switch}>
          <Switch
            className={
              switchMode ? styles.switchUnChecked : styles.switchChecked
            }
            onChange={onChange}
          />
        </div>
      </div>
    </div>
  );
};

export default AppHeader;
