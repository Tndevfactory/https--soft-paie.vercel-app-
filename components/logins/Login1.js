import React, { useState } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
import { Device } from "../devices/Device";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import Button1 from "../buttons/Button1";

const Desktop = styled(motion.div)`
  padding: 0.6rem;
  border-radius: 2%;

  .form_container {
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.5);
    padding: 1rem;
    border-radius: 2%;
    background-color: rgba(255, 255, 255, 0.75);
    display: flex;
    flex-flow: column wrap;
  }
  .title {
    font-size: 33px;
    text-transform: capitalize;
    text-align: center;
    margin-bottom: 1rem;
    color: ${({ switchMode, ui }) =>
      switchMode
        ? chroma(ui.dark).luminance() < 0.4
          ? chroma(ui.dark).brighten(1)
          : chroma(ui.dark).darken(1)
        : chroma(ui.light).luminance() < 0.4
        ? chroma(ui.light).brighten(1)
        : chroma(ui.light).darken(1)};
  }
  .label {
    font-weight: 400;
    margin-top: 6px;
  }
  input {
    width: 100%;
    height: 34px;
    padding: 1px 0.7rem;
    border: 1px solid;
    border-radius: 2%;
  }
  .zone_password {
    position: relative;
    .show_password {
      position: absolute;
      top: 7px;
      right: 15px;
      cursor: pointer;
    }
  }
  .error {
    color: crimson;
    font-size: 13px;
    font-weight: 500;
    font-style: italic;
    margin-left: 4px;
    margin-bottom: 5px;
  }
  .btn {
    margin-top: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;

    .register_phrase {
      font-size: 12px;
      a {
        font-size: 12px;
        font-weight: 500;
        cursor: pointer;
        &:hover {
          color: ${({ switchMode, ui }) =>
            switchMode ? chroma(ui.dark) : chroma(ui.light)};
        }
      }
    }
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    .form_container {
      box-shadow: none;
      padding: 0.5rem;
      border-radius: 2%;
      -webkit-box-shadow: none;
      -moz-box-shadow: none;
      box-shadow: none;
      .register_phrase {
        font-size: 11px;
      }
    }
  }
`;

const Login1 = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode, setSwitchMode } =
    prodStates;

  const [credential, setCredential] = useState({
    email: "",
    password: "",
    emailError: "",
    passwordError: "",
  });

  const [showPassword, setShowPassword] = useState(false);

  const handleOnchange = (e) => {
    credential.passwordError = "";
    credential.emailError = "";
    setCredential({
      ...credential,
      [e.target.name]: e.target.value,
    });
  };

  const handleValidate = () => {
    let errorFlag = false;

    if (credential.email.length === 0) {
      setCredential({
        ...credential,
        emailError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(credential.email)) {
      setCredential({
        ...credential,
        emailError: "mauvais format",
      });
      errorFlag = true;
    } else if (credential.password.length < 6) {
      setCredential({
        ...credential,
        passwordError:
          "mot de passe doit etre au moins de longeur de 6 caracteres ",
      });
      errorFlag = true;
    }

    if (errorFlag) {
      return false;
    } else {
      return true;
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    if (handleValidate()) {
      console.log("all data verified before sent");
      setCredential({
        email: "",
        password: "",
        emailError: "",
        passwordError: "",
      });
    }
  };

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <form className="form_container" onSubmit={handleSubmit}>
        <div className="title">connexion</div>

        <div className="label">Adresse email:</div>
        <input
          name="email"
          type="email"
          autoComplete="true"
          value={credential.email}
          onChange={handleOnchange}
        />
        <div className="error">
          {credential.emailError && credential.emailError}
        </div>
        <div className="label">Mot de passe:</div>
        <div className="zone_password">
          <input
            name="password"
            autoComplete="true"
            value={credential.password}
            onChange={handleOnchange}
            type={showPassword ? "text" : "password"}
          />
          <div
            className="show_password"
            onClick={() => setShowPassword(!showPassword)}
          >
            {showPassword ? <FaEye /> : <FaEyeSlash />}
          </div>
        </div>
        <div className="error">
          {credential.passwordError && credential.passwordError}
        </div>
        <div className="btn">
          {/* <button>valider</button> */}
          <Button1 disabled={false} width={7} height={2.2}>
            se connecter
          </Button1>
          <span className="register_phrase">
            Vous n'avez pas de compte, veuillez
            <Link href="/register">
              <a title="register"> s'inscrire</a>
            </Link>
          </span>
        </div>
      </form>
    </Mobile>
  );
};

export default Login1;
