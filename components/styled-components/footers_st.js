/** @format */

import styled, { css } from "styled-components";
import { motion } from "framer-motion";

export const Button = styled(motion.button)`
  background: violet;
  transition: background 0.9s ease-out;
  color: white;
  font-size: 17px;
  width: 100px;
  height: 50px;
  cursor: pointer;

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

export const StyledProfileCard = styled.div`
  border: 1px solid black;

  > .username {
    font-size: 20px;
    color: black;
    transition: 0.2s;

    &:hover {
      color: red;
    }

    + .dob {
      color: grey;
    }
  }
`;
