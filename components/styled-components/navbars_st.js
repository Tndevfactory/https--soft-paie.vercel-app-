/** @format */

import styled, { css } from "styled-components";
import { motion } from "framer-motion";

export const ProfileCard_st = styled.div`
  border: 1px solid black;

  > .username {
    font-size: 20px;
    color: black;
    transition: 0.2s;

    &:hover {
      color: red;
    }

    + .dob {
      color: crimson;
    }
  }
`;
