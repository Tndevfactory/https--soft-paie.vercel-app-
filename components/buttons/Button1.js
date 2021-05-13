import React, { useState } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
import { Device } from "../devices/Device";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const Desktop = styled(motion.button)`
  padding: 2px;
  position: relative;
  display: inline-block;
  letter-spacing: 0.5px;
  text-shadow: 0px 0.5px 0.2px rgba(0, 0, 0, 0.5);
  border-radius: 6px;

  height: ${({ height }) => height + "rem"};
  width: ${({ width }) => width + "rem"};

  cursor: ${({ disabled }) => (disabled ? "not-allowed" : "pointer")};
  border: 0.71px solid
    ${({ disabled, switchMode, ui }) =>
      disabled
        ? switchMode
          ? chroma("gray").brighten(1)
          : chroma("gray").brighten(1)
        : switchMode
        ? chroma(ui.dark).brighten(2)
        : chroma(ui.light).darken(1)};

  transition: background 0.5s ease-in-out;

  background: ${({ disabled, switchMode, ui }) =>
    disabled
      ? switchMode
        ? chroma("gray").brighten(1.5)
        : chroma("gray").brighten(2.5)
      : switchMode
      ? chroma(ui.dark)
      : chroma(ui.light)};

  color: ${({ disabled, switchMode, ui }) =>
    disabled
      ? switchMode
        ? chroma("gray").brighten(0.5)
        : chroma("gray").brighten(1)
      : switchMode
      ? chroma(ui.dark).luminance() < 0.4
        ? chroma(ui.dark).brighten(5)
        : chroma(ui.dark).darken(3)
      : chroma(ui.light).luminance() < 0.4
      ? chroma(ui.light).brighten(5)
      : chroma(ui.light).darken(3)};

  &:hover {
    background: ${({ disabled, switchMode, ui }) =>
      disabled
        ? switchMode
          ? chroma("gray").brighten(1.5)
          : chroma("gray").brighten(2.5)
        : switchMode
        ? chroma(ui.dark).luminance() < 0.4
          ? chroma(ui.dark).brighten(1)
          : chroma(ui.dark).darken(1)
        : chroma(ui.light).luminance() < 0.4
        ? chroma(ui.light).brighten(1)
        : chroma(ui.light).darken(1)};

    color: ${({ disabled, switchMode, ui }) =>
      disabled
        ? switchMode
          ? chroma("gray").brighten(0.5)
          : chroma("gray").brighten(1)
        : switchMode
        ? chroma(ui.dark).luminance() < 0.4
          ? chroma(ui.dark).brighten(5)
          : chroma(ui.dark).darken(3)
        : chroma(ui.light).luminance() < 0.4
        ? chroma(ui.light).brighten(5)
        : chroma(ui.light).darken(3)};
  }
  display: flex;
  justify-content: center;
  align-items: center;
  flex-flow: column nowrap;
  .children {
    font-size: 0.8rem;
    text-transform: capitalize;
  }
`;

const Mobile = styled(Desktop)`
  @media (min-width: 375px) and (max-width: 600px) {
    height: ${({ height }) => height - 0.4 + "rem"};
    width: ${({ width }) => width - 1.7 + "rem"};
    .children {
      font-size: 0.6rem;
    }
  }
  @media (min-width: 361px) and (max-width: 374px) {
    height: ${({ height }) => height - 0.4 + "rem"};
    width: ${({ width }) => width - 1.7 + "rem"};
    .children {
      font-size: 0.6rem;
    }
  }
  @media (max-width: 360px) {
    height: ${({ height }) => height - 0.4 + "rem"};
    width: ${({ width }) => width - 1.7 + "rem"};
    .children {
      font-size: 0.6rem;
    }
  }
`;

const Button1 = ({ children, height, width, disabled }) => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode, setSwitchMode } =
    prodStates;

  const [showPassword, setShowPassword] = useState(false);

  return (
    <Mobile
      ui={ui}
      disabled={disabled}
      switchMode={switchMode}
      height={height}
      width={width}
    >
      <span className="children">{children}</span>
    </Mobile>
  );
};

export default Button1;
