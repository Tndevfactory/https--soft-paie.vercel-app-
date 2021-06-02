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
      width: 20%;
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
  .validator_name{
  
      text-transform:capitalize;
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

const NotificationEmployee = ({ data }) => {
  const queryClient = useQueryClient();
  const router = useRouter();
  const { id } = router.query;

  const [prodMethods, prodStates] = ProdCtx();
  const { notificationMethods, pdfMethods } = prodMethods;
  const { apiPdf, downloadPdf } = pdfMethods;
  const {
    apiNotificationDataEmployee,
    apiNotificationData,
    apiNotificationValidationConge,
    apiNotificationNegationConge,
  } = notificationMethods;

  
  const { ui, notification, setNotification, switchMode } = prodStates;
  const [sectionSelector, setSectionSelector] = useState("");
  const [notificationDataEmployee, setNotificationDataEmployee] = useState([]);

  let cfg = {
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  };

  // query zone
  // query show notification data
  const notificationDataAppEmployee = useQuery(
    "notification-data-employee",
    () => apiNotificationDataEmployee(id)
  );

  if (notificationDataAppEmployee.isLoading) {
    console.log("notificationData loading");
  }
  if (notificationDataAppEmployee.error) {
    console.log("notificationData error ");
  }
  if (notificationDataAppEmployee.data) {
    console.log("notificationData   ");
    console.log(notificationDataAppEmployee.data);
  }

  React.useEffect(() => {
    setNotificationDataEmployee(notificationDataAppEmployee.data);

    return () => {
      console.log("purge notification data employee ");
    };
  }, [notificationDataAppEmployee.data]);

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
        <div>Référence</div>
        <div>Nature</div>
        <div>Manager</div>
        <div>Reponse Manager</div>
      </div>

      {notificationDataEmployee?.map((item) => (
        <div className="row">
            <div>
            {item.id}
            </div>
            <div>
            {item.nature}
            </div>
          <div className="validator_name">
            {item.validator_name == null
              ? "En attente de traitement"
              : item.validator_name}
          </div>
          <div>
            {item.validation == 1
              ? "Demande validée ✔️"
              : item.validation == null
              ? "-"
              : "Demande non validée ❌"}
          </div>
        </div>
      ))}
    </Mobile>
  );
};

export default NotificationEmployee;
