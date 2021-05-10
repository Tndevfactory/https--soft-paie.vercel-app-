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
  min-height: 25vh;
  padding: 2rem;
  border: 2px solid;
  color: indigo;
  form {
    display: flex;
    justify-content: space-around;
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    background: yellow;
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
      <h2>choose theme</h2>
      <form onSubmit={handleSubmit}>
        <div>
          <label htmlFor="">theme dark color</label>
          <SketchPicker color={ui.dark} onChangeComplete={handleChangeDark} />
        </div>
        <div>
          <label htmlFor="">theme light color</label>
          <SketchPicker color={ui.light} onChangeComplete={handleChangeLight} />
        </div>

        <div>
          <button type="submit">valider</button>
        </div>
      </form>
    </Mobile>
  );
};

export default Config1;
