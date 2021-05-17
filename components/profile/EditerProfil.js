/** @format */
import { motion } from "framer-motion";
import Button1 from "../buttons/Button1";
import DatePicker from "react-datepicker";
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
    font-weight: 600;
    margin-bottom: 0.2rem;
  }
  input {
    padding: 0rem 1rem;
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
  @media (min-width: 375px) and (max-width: 600px) {
    padding: 9rem 0rem 1rem 0rem;
  }

  @media (min-width: 361px) and (max-width: 374px) {
    padding: 9rem 0rem 1rem 0rem;
  }
  @media (max-width: 360px) {
    padding: 9rem 0rem 1rem 0rem;
  }
`;

export default function Profil() {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { ui, notification, setNotification, switchMode } = prodStates;

  const [startDate, setStartDate] = useState(new Date());
  const [endDate, setEndDate] = useState(new Date());

  const [sectionSelector, setSectionSelector] = useState("");

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <form className="form_profil" action="">
        {/* <h3>Editer profil</h3> */}
        <div className="profil_nom">
          <label htmlFor="">Nom:</label>
          <input type="text" />
        </div>
        <div className="profil_prenom">
          <label htmlFor="">Prenom:</label>
          <input type="text" />
        </div>
        <div className="profil_telephone">
          <label htmlFor="">Telephone:</label>
          <input type="text" />
        </div>

        <div className="profil_dob">
          <label for="start">Date de naissance:</label>
          <input
            type="date"
            id="start"
            name="trip-start"
            value="2021-06-07"
            min={new Date()}
          />
        </div>
        <div className="profil_adresse">
          <label className="label_adresse" htmlFor="">
            Adresse:
          </label>
          <textarea className="profil_area" id="cp" name="cp" rows="3" cols="5">
            bio employee Lorem ipsum dolor sit amet consectetur adipisicing
            elit. Nobis omnis voluptatum sunt repudiandae. Dolorum suscipit
            rerum, hic vitae quisquam minima laudantium esse est, ipsa placeat
            blanditiis qui iusto maiores et.
          </textarea>
        </div>

        <Button1 type="submit" disabled={false} width={5} height={2.2}>
          valider
        </Button1>
      </form>
    </Mobile>
  );
}
