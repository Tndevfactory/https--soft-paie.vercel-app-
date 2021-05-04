/** @format */
import React, { useState } from "react";
import { Row, Col, Menu, Switch, Typography } from "antd";
import { LoginOutlined } from "@ant-design/icons";
import styles from "./Header.module.scss";
import { AiOutlineLogin } from "react-icons/ai";

const { SubMenu } = Menu;
const { Title } = Typography;

const AppHeader = ({ switchMode, setSwitchMode }) => {
  const [current, setCurrent] = useState("mail");

  const onChange = (checked) => {
    //console.log(`switch to ${checked}`);
    //console.log('state ' + switchMode);
    setSwitchMode(checked);
  };

  const handleClick = (e) => {
    console.log("click ", e);
    setCurrent(e.key);
  };

  return (
    <Row className={switchMode ? styles.navbar_dk : styles.navbar_ctl}>
      <Col flex="200px" className={styles.brand}>
        {" "}
        <Title
          level={4}
          className={switchMode ? styles.text_dk : styles.text_ctl}
        >
          Soft-Paie
        </Title>
      </Col>
      <Col flex="auto" className={styles.halfMenu}>
        <div className={styles.loginSwitch}>
          <Title
            className={switchMode ? styles.text_dk : styles.text_ctl}
            level={4}
          >
            Se Connecter
            <AiOutlineLogin />
          </Title>
          <Switch
            className={
              switchMode ? styles.switchUnChecked : styles.switchChecked
            }
            onChange={onChange}
          />
        </div>
      </Col>
    </Row>
  );
};

export default AppHeader;
