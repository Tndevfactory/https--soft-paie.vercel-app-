/** @format */

import React, { useState } from "react";
import { motion } from "framer-motion";
import styled, { css } from "styled-components";
import chroma from "chroma-js";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import { Device } from "../devices/Device";
import { SketchPicker } from "react-color";
import Cookies from "js-cookie";

const Desktop = styled.div`
  margin-top: 75px;
  display: flex;
  justify-content: center;
  align-items: center;
  min-width: 500px;
  min-height: 77vh;
  padding: 1rem;

  .block {
    z-index: 1;
    display: flex;
    justify-content: space-around;
    gap: 16px;
    h3 {
      text-shadow: 0px 1px 1px rgba(0, 0, 0, 0.3);
      text-align: center;
      text-transform: capitalize;
      color: ${({ switchMode, ui }) =>
        switchMode
          ? chroma(ui.dark).luminance() < 0.4
            ? chroma(ui.dark).brighten(5)
            : chroma(ui.dark).darken(3)
          : chroma(ui.light).luminance() < 0.4
          ? chroma(ui.light).brighten(5)
          : chroma(ui.light).darken(3)};
    }
    .dark {
      background: ${({ switchMode, ui }) =>
        switchMode ? chroma(ui.dark) : "transparent"};

      padding: 3rem;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-flow: column wrap;
      cursor: pointer;
      box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.5);
      transition: box-shadow 0.1s linear;
      &:hover {
        box-shadow: 1px 1px 5px 4px rgba(0, 0, 0, 0.5);
      }

      .dark_picker {
        display: block;
        cursor: pointer;
      }
    }
    .light {
      background: ${({ switchMode, ui }) =>
        switchMode ? "transparent" : chroma(ui.light)};
      padding: 3rem;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-flow: column wrap;
      cursor: pointer;
      box-shadow: 1px 1px 2px 1px rgba(0, 0, 0, 0.5);
      transition: box-shadow 0.1s linear;
      &:hover {
        box-shadow: 1px 1px 5px 4px rgba(0, 0, 0, 0.5);
      }
      .light_picker {
        display: block;
        cursor: pointer;
      }
    }
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    // background: grey;
    margin-top: 145px;

    .block {
      z-index: 1;
      display: flex;
      justify-content: flex-start;
      align-items: flex-start;
      flex-flow: column wrap;
      .dark {
        // background: red;
        padding: 0.1rem;
        .dark_picker {
          background: red;
          display: block;
          cursor: pointer;
        }
      }
      .light {
        padding: 0.1rem;
        // background: yellow;
        .light_picker {
          display: block;
          cursor: pointer;
        }
      }
    }
  }
`;

const Config1 = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiUpdate } = prodMethods;
  const { ui, setUi, switchMode, setSwitchMode } = prodStates;

  const handleChangeDark = (color) => {
    setUi({
      ...ui,
      dark: color.hex,
    });
    Cookies.set("dark", color.hex);
  };
  const handleChangeLight = (color) => {
    setUi({
      ...ui,
      light: color.hex,
    });
    Cookies.set("light", color.hex);
  };

  const handleDarkClick = () => {
    if (!switchMode) {
      setSwitchMode(true);
      // console.log("dark click");
      // console.log(switchMode);
    }
  };
  const handlelightClick = () => {
    if (switchMode) {
      setSwitchMode(false);
      // console.log("lightclick");
      // console.log(switchMode);
    }
  };

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <div className="block">
        <div className="dark" onClick={handleDarkClick}>
          <h3>{switchMode ? "theme Actif" : "theme secondaire"}</h3>
          <SketchPicker
            color={ui.dark}
            className="dark_picker"
            onChangeComplete={handleChangeDark}
          />
        </div>
        <div className="light" onClick={handlelightClick}>
          <h3>{!switchMode ? "theme Actif" : "theme secondaire"}</h3>
          <SketchPicker
            color={ui.light}
            className="light_picker"
            onChangeComplete={handleChangeLight}
          />
        </div>
      </div>
    </Mobile>
  );
};

export default Config1;
