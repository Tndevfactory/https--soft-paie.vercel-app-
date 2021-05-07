import styled, { keyframes } from "styled-components";

const slideIn = keyframes`
  0%{
    opacity: 0;
    left:150px;

  }

  99%{
    opacity: 1;
    left:900px;
  }

  100%{
    opacity: 0;
    left:900px;
  }
`;

export const Toast_st = styled.span`
  animation: ${slideIn} 6s cubic-bezier(0.4, 0, 0.2, 1) both;

  position: fixed;
  top: 22px;

  color: white;
  font-size: 25px;
  font-weight: 700;
  z-index: 10;
`;
