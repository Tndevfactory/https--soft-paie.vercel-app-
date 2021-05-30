/** @format */
import { motion } from "framer-motion";
import React from "react";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiProfileShowOne } from "../../contexts/ProductsContext";
import { Device } from "../../components/devices/Device";
import chroma from "chroma-js";
import Config from "../../components/config/Config1";

import Loader from "../../components/loader/Loader1";
import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";
import Loader1 from "../../components/loader/Loader1";

const Desktop = styled(motion.div)`
  min-height: 100vh;
  min-width: 100%;
  background-color: rgb(183, 180, 187);
  overflow-x: hidden;
  line-height: 2;
  //background: red;
  .main {
    // background: pink;
    min-height: 80vh;
    display: flex;
    justify-content: center;
    align-items: center;
    //flex-flow: column;
  }
  .bottom {
    padding: 0;
    //background: orange;
    min-height: 20vh;
    display: flex;
    justify-content: center;
    align-items: flex-end;
  }
  .expandable {
    color: ${({ switchMode, ui }) =>
      switchMode ? chroma("#ddd").darken(1) : chroma("#ddd")};
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    .expandable {
      display: none;
    }
  }
`;

export default function Config_page() {
  const queryClient = useQueryClient();

  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet } = prodMethods;
  const { loader, setLoader, ui, switchMode } = prodStates;

  return (
    <Mobile ui={ui} switchMode={switchMode}>
    
      <div className="main">
          <Navbar />
         
          <Config />
        </div>

        <div className="bottom">
          <Footer fixed={false} />
        </div>
    </Mobile>
  );
}
