/** @format */
import { motion } from "framer-motion";
import styled, { css } from "styled-components";
import chroma from "chroma-js";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import { Device } from "../devices/Device";

const Desktop = styled(motion.div)`
  color: ${({ switchMode, ui }) =>
    switchMode
      ? chroma(ui.dark).luminance() < 0.4
        ? chroma(ui.dark).brighten(4)
        : chroma(ui.dark).darken(3)
      : chroma(ui.light).luminance() < 0.4
      ? chroma(ui.light).brighten(4)
      : chroma(ui.light).darken(3)};

  background: ${({ switchMode, ui }) =>
    switchMode ? chroma(ui.dark).darken(1) : chroma(ui.light).brighten(1)};
  min-height: 15vh;
  display: flex;
  flex-flow: column wrap;
  justify-content: center;
  align-items: center;

  h3 {
    color: red;
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
  }
`;

const Footer = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiUpdate } = prodMethods;
  const { ui, switchMode, setSwitchMode } = prodStates;
  return (
    <footer>
      <Mobile ui={ui} switchMode={switchMode}>
        <div>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Explicabo,
        </div>
        <div>Iheb creation &copy; {new Date().getFullYear()}</div>
      </Mobile>
    </footer>
  );
};

export default Footer;
