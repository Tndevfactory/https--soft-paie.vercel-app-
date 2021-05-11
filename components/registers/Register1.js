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
  margin-top: 2rem;
  border: 1px solid indigo;
  position: relative;
  padding: 0.6rem;
  color: rgba(0, 0, 0, 0.8);
  border-radius: 2%;
  box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.5);
  min-width: 500px;
  min-height: 620px;
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
    color: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.dark) : chroma(ui.light)};
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
    border: none;
    margin-top: 9rem;
    padding: 3rem;

    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    .form_container {
      box-shadow: none;
      padding: 0.5rem;
      border-radius: 2%;
      position: absolute;
      width: 70%;
      -webkit-box-shadow: none;
      -moz-box-shadow: none;
      box-shadow: none;
      .register_phrase {
        font-size: 11px;
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
          placeholder="Veuillez insérer votre Nom"
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
          placeholder="Veuillez insérer votre Prénom"
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
          placeholder="Veuillez insérer votre Email"
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
            placeholder="Veuillez insérer votre mot de passe"
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
            placeholder="Veuillez confirmer votre mot de passe"
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
