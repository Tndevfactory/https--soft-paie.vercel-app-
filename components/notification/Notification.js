/** @format */
import { motion } from "framer-motion";
import Button1 from "../buttons/Button1";
import { useRouter } from "next/router";
import React, { useState } from "react";
import Head from "next/head";
import Breadcrumb1 from "../breadcrumbs/Breadcrumb1";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import { Device } from "../../components/devices/Device";
import Register1 from "../../components/registers/Register1";
import Alert1 from "../../components/alerts/Alert1";
import Loader from "../../components/loader/Loader1";
import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";
import Image from "next/image";
import Link from "next/link";
import chroma from "chroma-js";
import { format, compareAsc } from "date-fns";

import {
  FaDownload,
  FaUser,
  FaRegListAlt,
  FaRegMoneyBillAlt,
  FaRecycle,
  FaParking,
  FaSkating,
  FaEye,
  FaThumbsDown,
  FaThumbsUp,
} from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-width: 70vw;
  .row_search {
    padding: 1rem;
    .form_search {
      display: flex;
      gap: 2px;
    }
    input {
      border: 1px #bbb solid;
      border-radius: 5px;
      padding: 0em 1em;
      height: 2em;
      &:focus {
        border: 1px #888 solid;
        outline: none;
      }
    }
  }
  .row_fixed {
    border-top-right-radius: 6px;
    border-top-left-radius: 6px;
    display: flex;
    justify-content: center;
    width: 100%;
    padding: 0.3em;
    display: flex;
    font-size: 0.9em;
    justify-content: space-around;
    background: ${({ switchMode, ui }) =>
      switchMode ? chroma(ui.dark) : chroma(ui.light)};

    color: ${({ switchMode, ui }) =>
      switchMode
        ? chroma(ui.dark).luminance() < 0.4
          ? chroma(ui.dark).brighten(5)
          : chroma(ui.dark).darken(3)
        : chroma(ui.light).luminance() < 0.4
        ? chroma(ui.light).brighten(5)
        : chroma(ui.light).darken(3)};
  }
  .row {
    margin: 0.3em 0em 0.3em 0em;
    width: 100%;
    padding: 0.3em;
    font-size: 0.9em;
    display: flex;
    justify-content: center;
    border: solid 1px #999;
    justify-content: space-around;
    align-items: center;
    background: rgba(0, 0, 0, 0.1);
    transition: all 0.2s;

    & > * {
      display: flex;
      justify-content: center;
      width: 33%;
    }
    &:hover {
      box-shadow: 0.31px 1px 0.5px 1px rgba(0, 0, 0, 0.2);
    }
  }

  .validation_button {
    margin-right: 1rem;
    padding: 0.5rem;
    border: none;
    background-color: seagreen;
    border-radius: 5px;
    cursor: pointer;
  }
  .validation_icon {
    color: white;
  }
  .negation_button {
    padding: 0.5rem;
    border: none;
    background-color: crimson;
    border-radius: 5px;
    cursor: pointer;
  }
  .negation_icon {
    color: white;
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

const Notification = ({ data }) => {
  const queryClient = useQueryClient();
  const router = useRouter();
  const { id } = router.query;
  const [prodMethods, prodStates] = ProdCtx();
  const { notificationMethods, pdfMethods } = prodMethods;
  const { apiPdf, downloadPdf } = pdfMethods;
  const {
    apiNotificationData,
    apiNotificationValidationConge,
    apiNotificationNegationConge,
  } = notificationMethods;

  // { id: "1", user_id: "55", content: "cp demande " },
  //   { id: "1", user_id: "555", content: "cp demande 7 " },
  //   { id: "3", user_id: "555", content: "cp demande 8" },

  const { ui, notification, setNotification, switchMode } = prodStates;
  const [sectionSelector, setSectionSelector] = useState("");
  const [notificationData, setNotificationData] = useState([]);

  let cfg = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };

  // query zone
  // query show notification data
  const notificationDataApp = useQuery("notification-data", () =>
    apiNotificationData()
  );

  if (notificationDataApp.isLoading) {
    console.log("notificationData loading");
  }
  if (notificationDataApp.error) {
    console.log("notificationData error ");
  }
  if (notificationDataApp.data) {
    console.log("notificationData   ");
    console.log(notificationDataApp.data);
  }

  const updNotificationValidationConge = async (fd, cfg) => {
    let res = await apiNotificationValidationConge(fd, cfg);
    queryClient.invalidateQueries("notification-data");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  const updNotificationNegationConge = async (fd, cfg) => {
    let res = await apiNotificationNegationConge(fd, cfg);
    queryClient.invalidateQueries("notification-data");
    // queryClient.resetQueries("crud-admin", { exact: true });
    return res;
  };

  const fd = new FormData();

  const handleValidationConge = (idDemande, id) => {
    fd.append("validation", 1);
    fd.append("idDemande", idDemande);
    fd.append("idManager", id);
    fd.append("_method", "put"); // spoof method laravel

    updNotificationValidationConge(fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          //  setUpdRes({
          //     ok: res.ok,
          //     response2: "Impossible d'éffectuer la modification",
          //   });
        }
      })
      .catch((err) => console.log(err));
  };

  const handleNegationConge = (idDemande, id) => {
    fd.append("validation", 0);
    fd.append("idDemande", idDemande);
    fd.append("idManager", id);
    fd.append("_method", "put"); // spoof method laravel

    updNotificationNegationConge(fd, cfg)
      .then((res) => {
        if (res.ok) {
          //  setUpdRes({ ok: res.ok, response1: res.response });
          console.log(res.response, res.ok);
          console.log(res);
        } else {
          //  setUpdRes({
          //     ok: res.ok,
          //     response2: "Impossible d'éffectuer la modification",
          //   });
        }
      })
      .catch((err) => console.log(err));
  };

  //trigger data for notification
  // {
  //   id: notificationDataApp.data?.id,
  //   user_id: notificationDataApp.data?.user_id,
  //   content: notificationDataApp.data?.content,
  // }
  React.useEffect(() => {
    setNotificationData(notificationDataApp.data);

    return () => {
      console.log("purge notification count ");
    };
  }, [notificationDataApp.data]);

  // const notif = [1, 2];

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <div className="row_search">
        <form className="form_search">
          <input type="text" />
          <Button1 type="submit" disabled={false} width={6} height={2}>
            Rechercher
          </Button1>
        </form>
      </div>

      <div className="row_fixed">
        <div>Matricule Employee</div>
        <div>Contenu</div>
        <div>Valider/Refuser</div>
      </div>

      {notificationData?.map((item) => (
        <div className="row">
          <div>{item.user_id}</div>
          <div>{item.content}</div>

          <div>
            <button
              id="3"
              className="validation_button"
              onClick={() => handleValidationConge(item.id, id)}
            >
              <FaThumbsUp className="validation_icon" />
            </button>
            <button
              id="7"
              className="negation_button"
              onClick={() => handleNegationConge(item.id, id)}
            >
              <FaThumbsDown className="negation_icon" />
            </button>
          </div>
        </div>
      ))}
    </Mobile>
  );
};

export default Notification;
