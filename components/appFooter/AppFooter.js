/** @format */
import { FaBeer } from "react-icons/fa";

import { Button, Space, Upload, Popconfirm } from "antd";
import { UploadOutlined } from "@ant-design/icons";

import styles from "./Footer.module.scss";

const AppFooter = ({ switchMode, setSwitchMode }) => {
  return (
    <div className={switchMode ? styles.footer_dk : styles.footer_ctl}>
      <Space>SOFTWARE DE CALCUL DE PAIE</Space>
      <h3> &copy; Iheb Creation -- {new Date().getFullYear()}</h3>
    </div>
  );
};

export default AppFooter;
