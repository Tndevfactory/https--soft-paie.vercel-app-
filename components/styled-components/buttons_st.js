/** @format */

import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import { device } from "./vars_st";
import chroma from "chroma-js";

export const Button_st = styled(motion.button)`
  transition: background 0.9s ease-out;
  font-size: 17px;
  height: 50px;
  cursor: pointer;

  &:focus {
    outline: none;
    box-shadow: 1px 1px 2px red;
  }
  &:before {
    content: " 🦄 ";
  }
  &:after {
    content: " 🦄 ";
  }

  @media ${device.mobile} {
    width: 3rem;
  }
  @media ${device.tablet} {
    width: 5rem;
  }

  @media ${device.desktop} {
    width: 6rem;
  }

  ${({ switchMode }) =>
    switchMode
      ? css`
          &:hover {
            background-color: var(--dk_background);
            color: var(--ctl_text);
          }
        `
      : css`
          &:hover {
            background-color: var(--ctl_background);
            color: var(--dk_text);
          }
        `}

  ${({ switchMode, color = chroma.random() }) =>
    switchMode
      ? css`
          background-color: ${color};
          color: ${chroma.contrast(color, "black") >= 4 ? "black" : "white"};
        `
      : css`
          background-color: var(--dk_background);
          color: ${chroma.contrast("#001d3d", "black") >= 4
            ? "black"
            : "white"};
        `}
`;
