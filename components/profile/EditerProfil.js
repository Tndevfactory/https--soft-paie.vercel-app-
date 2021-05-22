/** @format */
import { motion } from "framer-motion";
import axios from "axios";
import Button1 from "../buttons/Button1";
import DatePicker from "react-datepicker";
import React, { useState } from "react";
import Head from "next/head";
import Breadcrumb1 from "../breadcrumbs/Breadcrumb1";
import { useRouter } from "next/router";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx } from "../../contexts/ProductsContext";
import Image from "next/image";
import Link from "next/link";
import chroma from "chroma-js";
import FormData from "form-data";
import Alert2 from "../../components/alerts/Alert2";

import {
  FaUpload,
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaRecycle,
  FaParking,
  FaSkating,
} from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-width: 70vw;

  .form_profil {
    display: flex;
    flex-flow: column nowrap;
    gap: 10px;
  }

  label {
    display: block;
    font-weight: 400;
    margin-bottom: 0.2rem;
  }
  input {
    width: 50%;
    height: 1.9em;
    padding: 1px 0.7rem;
    border: 1px solid #bbb;
    border-radius: 2%;
  }
  .error {
    color: crimson;
    font-size: 13px;
    font-weight: 500;
    font-style: italic;
    margin-left: 4px;
    margin-bottom: 5px;
  }

  .profil_nom {
  }
  .profil_prenomnom {
  }
  .profil_telephone {
  }
  .profil_dob {
  }
  .profil_adresse {
    min-width: 60vw;
    .label_adresse {
    }
    .profil_area {
      width: 100%;
      //background: red;
      padding: 1rem;
    }
  }
`;

const Mobile = styled(Desktop)`
  //large screen
  @media (min-width: 1920px) {
  }

  @media (min-width: 1536px) and (max-width: 1919px) {
  }

  @media (min-width: 1440px) and (max-width: 1535px) {
  }
  @media (min-width: 1366px) and (max-width: 1439px) {
  }
  @media (min-width: 1280px) and (max-width: 1365px) {
  }

  //mobile
  @media (min-width: 375px) and (max-width: 600px) {
  }

  @media (min-width: 361px) and (max-width: 374px) {
  }
  @media (max-width: 360px) {
  }
`;

export default function Profil() {
  let errorProfile = "";
  let successProfile = "";
  let loaderProfile = "";

  const router = useRouter();
  const { id } = router.query;

  const [prodMethods, prodStates] = ProdCtx();
  const { mailMethods, profilMethods } = prodMethods;
  const {
    apiProfileShowAll,
    apiProfileStore,
    apiProfileShowOne,
    apiProfileUpdate,
    apiProfileDelete,
  } = profilMethods;

  const { apiSendMail } = mailMethods;

  const {
    loader,
    setLoader,
    ui,
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
  } = prodStates;

  const [msgProfile, setMsgProfile] = useState({
    msgAlert: "",
    typeAlert: "",
  });

  const [credentialP, setCredentialP] = useState({
    nom: "",
    prenom: "",
    email: "",
    telephone: "",
    adresse: "",

    nomError: "",
    prenomError: "",
    emailError: "",
    telephoneError: "",
    adresseError: "",
  });

  const [file, setFile] = useState();

  const [showPassword, setShowPassword] = useState(false);

  //mutations city

  const ShowAllProfileMutation = useMutation(() => apiProfileShowAll());

  const StoreProfileMutation = useMutation((fd, cfg) =>
    apiProfileStore(fd, cfg)
  );

  const ShowOneProfileMutation = useMutation((id) => apiProfileShowOne(id));

  const UpdateProfileMutation = useMutation((id, fd) =>
    apiProfileUpdate(id, fd)
  );

  const DeleteProfileMutation = useMutation((id) => apiProfileDelete(id));

  const handleOnChange = (e) => {
    credentialP.nomError = "";
    credentialP.prenomError = "";
    credentialP.emailError = "";
    credentialP.telephoneError = "";
    credentialP.adresseError = "";

    setCredentialP({
      ...credentialP,
      [e.target.name]: e.target.value,
    });
  };

  const handleFile = (e) => {
    setFile(e.target.files[0]);
  };

  const handleValidate = () => {
    let errorFlag = false;

    if (credentialP.nom.length === 0) {
      setCredentialP({
        ...credentialP,
        nomError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (credentialP.prenom.length === 0) {
      setCredentialP({
        ...credentialP,
        prenomError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (credentialP.email.length === 0) {
      setCredentialP({
        ...credentialP,
        emailError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(credentialP.email)) {
      setCredentialP({
        ...credentialP,
        emailError: "mauvais format",
      });
      errorFlag = true;
    } else if (credentialP.telephone.length === 0) {
      setCredentialP({
        ...credentialP,
        telephoneError: "champ obligatoire",
      });
      errorFlag = true;
    } else if (credentialP.adresse.length === 0) {
      setCredentialP({
        ...credentialP,
        adresseError: "champ obligatoire",
      });
      errorFlag = true;
    }

    if (errorFlag) {
      return false;
    } else {
      return true;
    }
  };

    let cfg = {
      headers: {
        "Content-Type": "multipart/form-data",
      },
    };
//-------------------------used for update only
    const upd = async (id, fd, cfg) => {
      const data = await apiProfileUpdate(id, fd, cfg);
      console.log(data);
    };
//--------------------------------------------------
  const handleSubmit = (e) => {
    e.preventDefault();
    const fd = new FormData();

    Object.keys(credentialP).map((key) => {
      if (credentialP[key] !== "") {
        console.log(key, credentialP[key]);
        fd.append(key, credentialP[key]);
      }
    });

    fd.append("file", file);
    fd.append("_method", "PUT");

    console.log(Array.from(fd));
    upd(id,fd,cfg);
    //UpdateProfileMutation.mutate(id, fd);

    // if (handleValidate()) {
    //   console.log(" all data verified before sent");

    //   Object.keys(credentialP).map((key) => {
    //     if (credentialP[key] !== "") {
    //       console.log(key, credentialP[key]);
    //       fd.append(key, credentialP[key]);
    //     }
    //   });
    //   console.log("fd inside handle submit");
    //   console.log(Array.from(fd));
    //   UpdateProfileMutation.mutate(id, fd, cfg);
    // } else {
    //   console.log("profile  data not completed");
    //   UpdateProfileMutation.reset();
    // }
  };
  if (UpdateProfileMutation.isLoading) {
    loaderProfile = "loading";
  }

  if (UpdateProfileMutation.isError) {
    errorProfile = "erreur server backend";
  }

  if (UpdateProfileMutation.isSuccess) {
    successProfile = "success";
    console.log("UpdateProfileMutation.data");
    console.log(UpdateProfileMutation.data);
    UpdateProfileMutation.reset();
  }

  React.useEffect(() => {
    setMsgProfile({ msgAlert: successProfile, typeAlert: "success" });
  }, [successProfile]);

  React.useEffect(() => {
    setMsgProfile({ msgAlert: errorProfile, typeAlert: "fail" });
  }, [errorProfile]);

  React.useEffect(() => {
    if (loaderProfile !== "") setLoader(true);
    if (errorProfile !== "") setLoader(false);
  }, [loaderProfile]);

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      {errorProfile && <Alert2 msg={msgProfile} setMsg={setMsgProfile} />}
      {successProfile && <Alert2 msg={msgProfile} setMsg={setMsgProfile} />}
      <form className="form_profil" onSubmit={handleSubmit}>
        <div className="profil_nom">
          <label htmlFor="nom">Nom:</label>
          <input
            autoComplete="false"
            value={credentialP.nom}
            type="text"
            name="nom"
            onChange={handleOnChange}
          />
          <div className="error">
            {credentialP.nomError && credentialP.nomError}
          </div>
        </div>

        <div className="profil_prenom">
          <label htmlFor="prenom">Prenom:</label>
          <input
            autoComplete="false"
            value={credentialP.prenom}
            type="text"
            name="prenom"
            onChange={handleOnChange}
          />
          <div className="error">
            {credentialP.prenomError && credentialP.prenomError}
          </div>
        </div>
        <div className="profil_email">
          <label htmlFor="email">Email:</label>
          <input
            autoComplete="false"
            value={credentialP.email}
            type="email"
            name="email"
            onChange={handleOnChange}
          />
          <div className="error">
            {credentialP.emailError && credentialP.emailError}
          </div>
        </div>

        <div className="profil_telephone">
          <label htmlFor="telephone">Telephone:</label>
          <input
            autoComplete="false"
            value={credentialP.telephone}
            type="text"
            name="telephone"
            onChange={handleOnChange}
          />
          <div className="error">
            {credentialP.telephoneError && credentialP.telephoneError}
          </div>
        </div>

        <div className="profil_adresse">
          <label className="label_adresse" htmlFor="adresse">
            Adresse:
          </label>
          <input
            autoComplete="false"
            value={credentialP.adresse}
            type="text"
            name="adresse"
            onChange={handleOnChange}
          />
          <div className="error">
            {credentialP.adresseError && credentialP.adresseError}
          </div>
        </div>

        <div className="profil_avatar">
          <label htmlFor="avatar">Photo profil:</label>
          <input
            autoComplete="false"
            type="file"
            name="file"
            onChange={handleFile}
          />

          <div className="error">
            {credentialP.fileError && credentialP.fileError}
          </div>
        </div>

        <Button1 type="submit" disabled={false} width={5} height={2.2}>
          valider
        </Button1>
      </form>
    </Mobile>
  );
}
