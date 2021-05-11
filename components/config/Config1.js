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
  //background: green;
  display: flex;
  justify-content: center;
  align-items: center;
  min-width: 500px;
  min-height: 77vh;
  padding: 2rem;
  background: yellowgreen;
  margin-top: 75px;
  .block {
    z-index: 1;
    display: flex;
    justify-content: space-around;
    .dark {
      background: red;
      padding: 8rem;
      .dark_picker {
        background: red;
        display: block;
        cursor: pointer;
      }
    }
    .light {
      padding: 8rem;
      background: indigo;
      .light_picker {
        background: yellow;
        display: block;
        cursor: pointer;
      }
    }
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    margin-top: 145px;
    .block {
      z-index: 1;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-flow: column wrap;
      .dark {
        background: red;
        padding: 1rem;
        .dark_picker {
          background: red;
          display: block;
          cursor: pointer;
        }
      }
      .light {
        padding: 1rem;
        background: indigo;
        .light_picker {
          //background: yellow;
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

  const handleSubmit = (e) => {
    console.log("ttt");
  };

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <div className="block">
        <div className="dark">
          <SketchPicker
            color={ui.dark}
            className="dark_picker"
            onChangeComplete={handleChangeDark}
          />
        </div>
        <div className="light">
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
