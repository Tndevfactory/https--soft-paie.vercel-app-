/** @format */

import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import chroma from "chroma-js";

export const Cards_st = styled(motion.div)`
  transition: background 0.9s ease-out;
  color: white;
  font-size: 17px;
  width: 100px;
  height: 50px;
  cursor: pointer;

  ${({ color = chroma.random() }) =>
    css`
      background-color: ${color}
      color: ${chroma.contrast(color, "black") >= 4 ? "black" : "white"}
        
    `}

  ${({ disabled }) =>
    disabled
      ? css`
          &:hover {
            background-color: red;
          }
        `
      : css`
          &:hover {
            background-color: green;
          }
        `}

  ${({ switchMode }) =>
    switchMode &&
    css`
      background: green;
      border: 1px solid pink;
    `}
`;
