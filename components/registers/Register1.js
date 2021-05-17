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
  /* width: 53vh; */
  min-width: 55vh;
  .form_container {
    margin-top: 5px;
    margin-bottom: 2rem;
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.5);
    padding: 1rem;
    width: 100%;
    border-radius: 2%;
    background-color: rgba(255, 255, 255, 0.75);
    display: flex;
    flex-flow: column wrap;
  }
  .title {
    font-size: 33px;
    text-transform: capitalize;
    text-align: center;
    margin-bottom: 0rem;
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
  @media (min-width: 375px) and (max-width: 600px) {
    margin-top: 180px;
    margin-bottom: 2rem;
    width: 55vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-flow: column nowrap;
    .form_container {
      width: 89%;
    }
  }

  @media (min-width: 361px) and (max-width: 374px) {
    margin-top: 180px;
    margin-bottom: 2rem;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-flow: column nowrap;
    width: 60vh;
    .form_container {
      width: 88%;
      padding: 1rem;
      margin-top: -20px;
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
  @media (max-width: 360px) {
    margin-top: 180px;
    margin-bottom: 2rem;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-flow: column nowrap;

    width: 60vh;
    .form_container {
      margin-top: 14px;
      margin-bottom: 1rem;
      width: 87%;

      .register_phrase {
        font-size: 12px;
      }
    }
  }
`;

const Register1 = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode, setSwitchMode } =
    prodStates;
  const [credentialR, setCredentialR] = useState({
    nom: "",
    prenom: "",
    email: "",
    password: "",
    password_confirmation: "",
    nomError: "",
    prenomError: "",
    emailError: "",
    passwordError: "",
    password_confirmationError: "",
  });

  const [showPassword, setShowPassword] = useState(false);
  const [showPasswordConfirm, setShowPasswordConfirm] = useState(false);

  const handleOnchange = (e) => {
    credentialR.nomError = "";
    credentialR.prenomError = "";
    credentialR.emailError = "";
    credentialR.passwordError = "";
    credentialR.password_confirmationError = "";

    setCredentialR({
      ...credentialR,
      [e.target.name]: e.target.value,
    });
  };

  const handleValidate = () => {
    let errorFlag = false;

    if (credentialR.nom.length === 0) {
      setCredentialR({
        ...credentialR,
        nomError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (credentialR.prenom.length === 0) {
      setCredentialR({
        ...credentialR,
        prenomError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (credentialR.email.length === 0) {
      setCredentialR({
        ...credentialR,
        emailError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(credentialR.email)) {
      setCredentialR({
        ...credentialR,
        emailError: "mauvais format",
      });
      errorFlag = true;
    } else if (credentialR.password.length < 6) {
      setCredentialR({
        ...credentialR,
        passwordError:
          "mot de passe doit etre au moins de longeur de 6 caracteres ",
      });
      errorFlag = true;
    } else if (credentialR.password_confirmation !== credentialR.password) {
      setCredentialR({
        ...credentialR,
        password_confirmationError: "mots de passe ne correspondent pas",
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
    console.log("handleSubmit");
    if (handleValidate()) {
      console.log("all data verified before sent");
      setCredentialR({
        nom: "",
        prenom: "",
        email: "",
        password: "",
        password_confirmation: "",
        nomError: "",
        prenomError: "",
        emailError: "",
        passwordError: "",
        password_confirmationError: "",
      });
    }
  };

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <form
        autoComplete="false"
        className="form_container"
        onSubmit={handleSubmit}
      >
        <div className="title">inscription</div>
        <div className="label">Nom:</div>
        <input
          name="nom"
          autoComplete="false"
          value={credentialR.nom}
          onChange={handleOnchange}
          type="text"
        />
        <div className="error">
          {credentialR.nomError && credentialR.nomError}
        </div>
        <div className="label">Prénom:</div>
        <input
          name="prenom"
          type="text"
          autoComplete="false"
          value={credentialR.prenom}
          onChange={handleOnchange}
        />
        <div className="error">
          {credentialR.prenomError && credentialR.prenomError}
        </div>
        <div className="label">Adresse email:</div>
        <input
          name="email"
          type="email"
          autoComplete="false"
          value={credentialR.email}
          onChange={handleOnchange}
        />
        <div className="error">
          {credentialR.emailError && credentialR.emailError}
        </div>
        <div className="label">Mot de passe:</div>
        <div className="zone_password">
          <input
            name="password"
            autoComplete="false"
            value={credentialR.password}
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
          {credentialR.passwordError && credentialR.passwordError}
        </div>
        <div className="label">Confirmation mot de passe:</div>
        <div className="zone_password">
          <input
            name="password_confirmation"
            autoComplete="false"
            value={credentialR.password_confirmation}
            onChange={handleOnchange}
            type={showPasswordConfirm ? "text" : "password"}
          />
          <div
            className="show_password"
            onClick={() => setShowPasswordConfirm(!showPasswordConfirm)}
          >
            {showPasswordConfirm ? <FaEye /> : <FaEyeSlash />}
          </div>
        </div>

        <div className="error">
          {credentialR.password_confirmationError &&
            credentialR.password_confirmationError}
        </div>
        <div className="btn">
          <Button1 disabled={false} width={6} height={2.2}>
            s'inscrire
          </Button1>
          <span className="register_phrase">
            Vous avez un compte, veuillez
            <Link href="/">
              <a title="login"> se connecter</a>
            </Link>
          </span>
        </div>
      </form>
    </Mobile>
  );
};

export default Register1;
