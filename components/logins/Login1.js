import React, { useState } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
import { Device } from "../devices/Device";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const Desktop = styled(motion.div)`
  border: 1px solid indigo;
  position: relative;
  padding: 0.6rem;
  color: rgba(0, 0, 0, 0.8);
  border-radius: 2%;
  box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.5);
  min-width: 500px;
  min-height: 400px;
  display: flex;
  justify-content: center;
  align-items: center;

  .form_container {
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.5);
    padding: 1rem;
    border-radius: 2%;
    position: absolute;
    background-color: rgba(255, 255, 255, 0.75);
    width: 90%;
    height: 90%;
    display: flex;
    flex-flow: column wrap;
  }
  .title {
    font-size: 33px;
    text-transform: capitalize;
    text-align: center;
    margin-bottom: 1rem;
  }
  .label {
    font-weight: 400;
    margin-top: 6px;
  }
  input {
    width: 100%;
    height: 34px;
    //background-color: yellow;
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
    button {
      width: 125px;
      padding: 2px;
      border-radius: 6px;
      cursor: pointer;
      border: 0.71px solid;
      transition: all 0.5s ease;
      &:hover {
        background: steelblue;
        color: white;
      }
    }
    span {
      font-size: 12px;
      a {
        font-size: 12px;
        color: indigo;
        font-weight: 500;
        cursor: pointer;
        &:hover {
          color: blue;
        }
      }
    }
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    margin-top: 9rem;
    padding: 3rem;
    border: none;
    min-width: 500px;
    min-height: 400px;
    //background: indigo;
    .form_container {
      box-shadow: none;
      padding: 0.5rem;
      border-radius: 2%;
      position: absolute;

      width: 70%;
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
          <button>valider</button>
          <span>
            Pas de compte, veuillez
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
