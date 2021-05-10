import React, { useState, useRef } from "react";
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

const Admin = () => {
  // const [prodMethods, prodStates] = ProdCtx();
  // const { getDimensions, getElementDimensions } = prodMethods;
  // const { switchMode, hasWindow } = prodStates;

  // const [dimensions, setDimensions] = useState(getDimensions);
  // const [collapsed, setCollapsed] = useState(true);
  // const [selected, setSelected] = useState(1);
  // const router = useRouter();

  // const handleSelect = (e) => {
  //   setSelected(parseInt(e.key));
  // };

  // React.useEffect(() => {
  //   if (hasWindow) {
  //     function handleResize() {
  //       setDimensions(getDimensions());
  //     }

  //     window.addEventListener("resize", handleResize);
  //     return () => window.removeEventListener("resize", handleResize);
  //   }
  // }, [hasWindow]);
  // const { width, height } = dimensions;

  // const [elem, setElem] = useState(0);
  // const elRef = useRef();
  // const prevRef = useRef();

  // React.useEffect(() => {
  //   setElem(elRef.current.clientWidth);
  //   if (elem === 48) {
  //     setElem(168);
  //   } else {
  //     setElem(48);
  //   }
  // }, [collapsed]);

  return <p>admin</p>;
};

export default Admin;
