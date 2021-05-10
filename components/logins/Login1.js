import React, { useState } from "react";
import styled, { css } from "styled-components";
import { motion } from "framer-motion";
import Link from "next/link";
import chroma from "chroma-js";
import { FaEyeSlash, FaEye } from "react-icons/fa";
import { Device } from "../devices/Device";

const ui = {
  dark: "#001d3d",
  light: "#00afb9",
};

const Desktop = styled(motion.div)`
  //background: red;
  min-height: 50vh;
  border: 1px solid red;
  padding: 1rem;
  color: black;
  display: flex;
  justify-content: center;
  align-items: center;
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    flex-flow: column wrap;
  }
`;

const Login1 = ({ switchMode }) => {
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
    <div>
      <Mobile switchMode={switchMode}>
        <form className="form_container" onSubmit={handleSubmit}>
          <div className="title_form">CONNEXION</div>
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
              Vous n avez pas de compte, veuillez
              <Link href="/register">
                <a> S'inscrire</a>
              </Link>
            </span>
          </div>
        </form>
      </Mobile>
    </div>
  );
};

export default Login1;
