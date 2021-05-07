import React, { useState } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
const device = {
  mobile: `(max-width: 600px)`,

  tablet: `(min-width: 601px)`,

  desktop: `(min-width: 900px)`,
};

const ui = {
  dark: "#001d3d",
  light: "#00afb9",
};

const Register_st = styled(motion.div)`
  display: grid;
  padding: 1rem;
  background-color: ${({ switchMode }) =>
    switchMode ? "var(--dk_background)" : "var(--ctl_background)"};
  justify-content: center;
  border-radius: 2%;
  height: 60vh;
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
      position: relative;
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
          color: ${chroma(ui.dark).brighten(1)};
          font-size: 15px;
        }
        &:focus {
          border: 1px solid rgba(55, 66, 88, 0.6);
        }
      }
      .show_password {
        position: absolute;
        right: 5px;
        top: 43px;
        color: ${ui.dark};
        cursor: pointer;
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
    height: 63vh;
    width: 40vh;
  }
`;

const Register1 = ({ switchMode }) => {
  const [credentialR, setCredentialR] = useState({
    nom: "",
    email: "",
    password: "",
    password_confirmation: "",
    nomError: "",
    emailError: "",
    passwordError: "",
    password_confirmationError: "",
  });

  const [showPassword, setShowPassword] = useState(false);

  const handleOnchange = (e) => {
    credentialR.passwordError = "";
    credentialR.emailError = "";
    credentialR.nomError = "";
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
    if (handleValidate()) {
      console.log("all data verified before sent");
      setCredentialR({
        nom: "",
        email: "",
        password: "",
        password_confirmation: "",
        nomError: "",
        emailError: "",
        passwordError: "",
        password_confirmationError: "",
      });
    }
  };

  return (
    <div>
      <Register_st switchMode={switchMode}>
        <form className="form_container" onSubmit={handleSubmit}>
          <div className="title_form">inscription</div>
          <div className="input_form">
            <label htmlFor="nom">Nom:</label>
            <input
              name="nom"
              type="text"
              value={credentialR.nom}
              placeholder="Entrer votre nom "
              onChange={handleOnchange}
            />
            <div className="error">
              {credentialR.nomError && credentialR.nomError}
            </div>
          </div>
          <div className="input_form">
            <label htmlFor="email">Adresse Email:</label>
            <input
              name="email"
              type="email"
              value={credentialR.email}
              placeholder="Entrer votre adresse email"
              onChange={handleOnchange}
            />
            <div className="error">
              {credentialR.emailError && credentialR.emailError}
            </div>
          </div>
          <div className="input_form">
            <label htmlFor="password">Mot de passe:</label>
            <input
              name="password"
              type={showPassword ? "text" : "password"}
              value={credentialR.password}
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
              {credentialR.passwordError && credentialR.passwordError}
            </div>
          </div>

          <div className="input_form">
            <label htmlFor="password_confirmation">
              Confirmation de Mot de passe:
            </label>
            <input
              name="password_confirmation"
              type={showPassword ? "text" : "password"}
              value={credentialR.password_confirmation}
              placeholder="Entrer votre mot de passe pour confirmation"
              onChange={handleOnchange}
            />
            <div
              className="show_password"
              onClick={() => setShowPassword(!showPassword)}
            >
              {showPassword ? <FaEyeSlash /> : <FaEye />}
            </div>

            <div className="error">
              {credentialR.password_confirmationError &&
                credentialR.password_confirmationError}
            </div>
          </div>
          <div className="button_form">
            <button type="submit">S'inscrire</button>
            <span>
              Vous avez pas un compte, veuillez
              <Link href="/">
                <a> Se connecter</a>
              </Link>
            </span>
          </div>
        </form>
      </Register_st>
    </div>
  );
};

export default Register1;
