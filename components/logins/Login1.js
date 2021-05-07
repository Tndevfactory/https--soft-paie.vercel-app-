import React from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";

const switchMode = true;

const device = {
  mobile: `(max-width: 600px)`,

  tablet: `(min-width: 601px)`,

  desktop: `(min-width: 900px)`,
};

const ui = {
  dark: "#001d3d",
  light: "#00afb9",
};

const Login_st = styled(motion.div)`
  display: grid;
  padding: 1rem;
  background-color: ${({ switchMode }) =>
    switchMode ? "var(--dk_background)" : "var(--ctl_background)"};
  justify-content: center;
  border-radius: 2%;
  height: 40vh;
  width: 50vh;

  .form_container {
    display: grid;
    color: ${({ switchMode }) =>
      switchMode ? "white" : "var(--dk_background)"};
    justify-content: center;
    grid-template-columns: 1fr;
    grid-auto-rows: auto;
    width: 45vh;

    .title_form {
      color: white;
      font-size: 19px;
      letter-spacing: 1px;
      font-weight: 700;
      text-transform: uppercase;
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
      text-align: center;
    }

    .input_form {
      label {
        margin: 5px 0px;
        display: block;
        font-weight: 500;
      }

      input {
        width: 100%;
        height: 34px;
        padding: 0px 9px;
        color: ${ui.dark};
        &::placeholder {
          color: darken(grey, 10%);
          font-size: 15px;
        }
        &:focus {
          border: 1px solid rgba(55, 66, 88, 0.6);
        }
      }
      .error {
        color: ${({ switchMode }) =>
          switchMode ? chroma("red").saturate(2) : chroma("red").saturate(1)};
        margin: 5px 0px 0px 5px;
      }
    }
    .button_form {
      color: red;
      margin-top: -25px;
      display: flex;
      justify-content: space-between;
      align-items: center;

      button {
        background-color: ${({ switchMode }) =>
          switchMode
            ? chroma(ui.light).saturate(2)
            : chroma(ui.light).darken(1)};
        color: white;
        text-shadow: 1px 1px 1px ${chroma(ui.dark).alpha(0.5)};
        font-weight: 500;
        padding: 9px 13px;
        border-radius: 2%;
        font-size: 15px;
        width: 150px;
        height: 42px;
        cursor: pointer;
        border: none;
        box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.5);
        transition: background-color 400ms ease-in-out;
        &:hover {
          background: ${({ switchMode }) =>
            switchMode
              ? chroma(ui.dark).brighten(1)
              : chroma(ui.light).darken(2)};
          color: white;
        }
        @media ${device.mobile} {
          font-size: 12px;
          width: 110px;
          height: 40px;
        }
      }
      span {
        font-size: 13px;
        color: ${({ switchMode }) =>
          switchMode
            ? chroma(ui.light).brighten(2)
            : chroma(ui.light).brighten(3)};
        a {
          font-size: 13px;
          font-weight: 500;
          color: ${({ switchMode }) =>
            switchMode
              ? chroma(ui.light).brighten(3)
              : chroma(ui.light).darken(2)};
          &:hover {
            color: ${({ switchMode }) =>
              switchMode
                ? chroma(ui.light).brighten(4)
                : chroma(ui.light).darken(4)};
          }
          @media ${device.mobile} {
            font-size: 15px;
          }
        }
        @media ${device.mobile} {
          font-size: 0px;
        }
      }
    }

    @media ${device.mobile} {
      width: 35vh;
    }
  }

  @media ${device.mobile} {
    height: 50vh;
    width: 40vh;
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
`;

const Login1 = ({ switchMode }) => {
  return (
    <div>
      <Login_st switchMode={switchMode}>
        <div className="form_container">
          <div className="title_form">CONNEXION</div>
          <div className="input_form">
            <label htmlFor="email">Adresse Email:</label>
            <input
              name="email"
              type="email"
              placeholder="Entrer votre adresse email"
            />
            <div className="error">error</div>
          </div>
          <div className="input_form">
            <label htmlFor="password">Mot de passe:</label>
            <input
              name="password"
              type="password"
              placeholder="Entrer votre mot de passe"
            />
            <div className="error">error</div>
          </div>
          <div className="button_form">
            <button>se connecter</button>
            <span>
              Vous n avez pas de compte, veuillez
              <Link href="/register">
                <a> S'inscrire</a>
              </Link>
            </span>
          </div>
        </div>
      </Login_st>
    </div>
  );
};

export default Login1;
