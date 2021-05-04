import React, { useState } from "react";
import { Layout, Menu } from "antd";
import {
  MenuUnfoldOutlined,
  MenuFoldOutlined,
  UserOutlined,
  VideoCameraOutlined,
  UploadOutlined,
} from "@ant-design/icons";
import { useRouter } from "next/router";
import { ProdCtx } from "../../contexts/ProductsContext";
import styles from "./Admin.module.scss";
import { Typography } from "antd";

const { Title } = Typography;
const { Header, Sider, Content } = Layout;

const Admin = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { getDimensions } = prodMethods;
  const { switchMode, hasWindow } = prodStates;

  const [dimensions, setDimensions] = useState(getDimensions);
  const [collapsed, setCollapsed] = useState(true);
  const [selected, setSelected] = useState(1);
  const router = useRouter();

  const handleSelect = (e) => {
    setSelected(parseInt(e.key));
  };

  React.useEffect(() => {
    if (hasWindow) {
      function handleResize() {
        setDimensions(getDimensions());
      }

      window.addEventListener("resize", handleResize);
      return () => window.removeEventListener("resize", handleResize);
    }
  }, [hasWindow]);
  const { width, height } = dimensions;
  // console.log("dimension");
  // console.log(width);
  // console.log(height);
  return (
    <Layout>
      <Sider
        className={switchMode ? styles.siteLayout_ctl : styles.siteLayout_dk}
        trigger={null}
        collapsible
        collapsed={collapsed}
      >
        <div className={switchMode ? styles.logo_ctl : styles.logo_dk}>
          <Title level={4}>Administration</Title>
        </div>
        <Menu
          className={switchMode ? styles.siteLayout_ctl : styles.siteLayout_dk}
          theme="dark"
          mode="inline"
        >
          <Menu.Item
            className={
              selected === 1
                ? switchMode
                  ? styles.antMenuItemSelected_ctl
                  : styles.antMenuItemSelected_dk
                : styles.antMenuItemUnSelected
            }
            key="1"
            icon={<UserOutlined />}
            onClick={handleSelect}
          >
            Consulter fiche
          </Menu.Item>
          <Menu.Item
            className={
              selected === 2
                ? switchMode
                  ? styles.antMenuItemSelected_ctl
                  : styles.antMenuItemSelected_dk
                : styles.antMenuItemUnSelected
            }
            key="2"
            icon={<VideoCameraOutlined />}
            onClick={handleSelect}
          >
            Consulter fiche 2
          </Menu.Item>
          <Menu.Item
            className={
              selected === 3
                ? switchMode
                  ? styles.antMenuItemSelected_ctl
                  : styles.antMenuItemSelected_dk
                : styles.antMenuItemUnSelected
            }
            key="3"
            icon={<UploadOutlined />}
            onClick={handleSelect}
          >
            Consulter fiche 3
          </Menu.Item>
          <Menu.Item
            className={
              selected === 4
                ? switchMode
                  ? styles.antMenuItemSelected_ctl
                  : styles.antMenuItemSelected_dk
                : styles.antMenuItemUnSelected
            }
            key="4"
            icon={<UploadOutlined />}
            onClick={handleSelect}
          >
            Consulter fiche 3
          </Menu.Item>
        </Menu>
      </Sider>

      <Layout>
        <Header
          className={switchMode ? styles.header_ctl : styles.header_dk}
          style={{ padding: 0 }}
        >
          {React.createElement(
            collapsed ? MenuUnfoldOutlined : MenuFoldOutlined,
            {
              className: styles.trigger,
              onClick: () => setCollapsed(!collapsed),
            }
          )}
          <p></p>
        </Header>

        <Content
          className={styles.siteLayoutBackground}
          style={{
            margin: "24px 16px",
            padding: 24,
            minHeight: 280,
          }}
        >
          {selected === 1 ? (
            <div>first element</div>
          ) : selected === 2 ? (
            <div>second element</div>
          ) : selected === 3 ? (
            <div>third element</div>
          ) : (
            <div>fourth element</div>
          )}

          {width < 600 ? <p>mobile</p> : <p>desktop</p>}
        </Content>
      </Layout>
    </Layout>
  );
};

export default Admin;
