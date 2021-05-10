import React, { useState, useRef, useEffect } from "react";
import styled, { css } from "styled-components";
import {
  motion,
  useMotionValue,
  useTransform,
  AnimatePresence,
} from "framer-motion";
import Loader from "react-loader-spinner";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const device = {
  mobile: `(max-width: 600px)`,

  tablet: `(min-width: 601px)`,

  desktop: `(min-width: 900px)`,
};

const ui = {
  dark: "#001d3d",
  light: "#00afb9",
};

const Loader_st = styled(motion.div)`
  position: absolute;
  display: flex;
  justify-content: flex-end;

  width: 100%;
  top: 90px;
  z-index: 10;
  left: 0;
  width: 100%;
  color: black;
  //background: yellow;
  font-weight: 600;
  font-size: 1.3rem;
  padding: 1rem;
`;

const Loader1 = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { setLoader, loader, setNotification, switchMode } = prodStates;

  const [showPassword, setShowPassword] = useState(false);
  const y = useMotionValue(-100);
  const opacity = useTransform(y, [-100, 0], [0, 1]);

  React.useEffect(() => {
    setTimeout(() => {
      setLoader(false);
    }, 3000);
  }, []);

  return (
    <Loader_st ui={ui} switchMode={switchMode}>
      <Loader
        type="Bars"
        color={switchMode ? ui.dark : ui.light}
        height={70}
        width={70}
        timeout={3000} //3 secs
      />
    </Loader_st>
  );
};

export default Loader1;
