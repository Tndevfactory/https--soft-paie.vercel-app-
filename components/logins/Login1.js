import React, { useState } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
import { Device } from "../devices/Device";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";

const Desktop = styled(motion.div)`
  border: 1px solid red;
  padding: 1rem;
  color: black;
  display: flex;
  justify-content: center;
  align-items: center;

  .form_container {
    padding: 3rem;
    display: block;
    min-width: 600px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-flow: column wrap;
    gap: 23px;
    background: red;
    .title_form {
    }
    .input_form {
      width: 100%;
    }
    .button_form {
    }
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    flex-flow: column wrap;
    margin-top: 9rem;
    .form_container {
      min-width: 400px;
      width: 100%;
      padding: 5px;
      width: 100%;
      background: indigo;
      color: white;
      .title_form {
      }
      .input_form {
        width: 100%;
      }
      .button_form {
      }
    }
  }
`;

const Login1 = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const {
    ui,
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
  } = prodStates;

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
        <h1 className="title_form">CONNEXION</h1>
        <div className="input_form">
          <label htmlFor="email">Adresse Email:</label>
          <input
            name="email"
            type="email"
            value={credential.email}
            placeholder="Entrer votre adresse email"
            onChange={handleOnchange}
          />
          <div className="error">
            {credential.emailError && credential.emailError}
          </div>
        </div>
        <div className="input_form">
          <label htmlFor="password">Mot de passe:</label>
          <input
            name="password"
            type={showPassword ? "text" : "password"}
            value={credential.password}
            placeholder="Entrer votre mot de passe"
            onChange={handleOnchange}
          />
          <div
            className="show_password"
            onClick={() => setShowPassword(!showPassword)}
          >
            {showPassword ? <FaEyeSlash /> : <FaEye />}
          </div>

          <div className="error">
            {credential.passwordError && credential.passwordError}
          </div>
        </div>
        <div className="button_form">
          <button type="submit">se connecter</button>
          <span>
            Pas de compte, veuillez
            <Link href="/register">
              <a> S'inscrire</a>
            </Link>
          </span>
        </div>
      </form>
    </Mobile>
  );
};

export default Login1;
