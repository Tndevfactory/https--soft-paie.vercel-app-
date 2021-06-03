import axios from "axios";
import { motion } from "framer-motion";
import React, { useState } from "react";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import FormData from "form-data";

import Button1 from "../buttons/Button1";
import { FaRegEnvelope } from "react-icons/fa";

const Desktop = styled(motion.div)`
  min-width: 60vw;
  // background: green;

  color: #333;
  font-size: 0.99em;
  .mass_mail {
    display: flex;
    gap: 1em;
  }

  .selector {
    color: #333;
    cursor: pointer;
    display: flex;
    padding: 0 0.5em;
    
    outline-color: none;
    border-radius: 6px;
    background: #fff;
    &:focus {
      outline: none;
      background: #fff;
    }
  }
  
  .email_status {
    margin-top:2rem;
    display:flex;
    gap:4rem;

      }

      .email_success {
        color: seagreen;
      }

      .email_fail {
        color: crimson;
      }
    
 

  
`;

const Mobile = styled(Desktop)`
  @media (min-width: 361px) and (max-width: 600px) {
  }
  @media (max-width: 360px) {
  }
`;

const MassMail = () => {
  let cfg = {
    headers: {
      "Content-Type": "multipart/form-data",
    },
  };

  const [prodMethods, prodStates] = ProdCtx();
  const { mailMethods } = prodMethods;
  const { apiMassSender } = mailMethods;
  const {
    loader,
    setLoader,
    ui,
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
  } = prodStates;

  const [yearM, setYearM] = useState("");
  const [monthM, setMonthM] = useState("");

  const [failed, setFailed] = useState();
  const [sent, setSent] = useState();

  const MassSend = async (yearM, monthM) => {
    const data = await apiMassSender(yearM, monthM);
    return data;
  };

  const handleChangeYear = (e) => {
    setYearM(e.target.value);
  };
  const handleChangeMonth = (e) => {
    setMonthM(e.target.value.toString());
  };

  const handleMassSend = (e) => {
    e.preventDefault();
    setLoader(true)
    // MassSend(yearM, monthM);
    MassSend(yearM, monthM)
      .then((data) => {
        console.log(data.failed);
        console.log(data.sent);
        setFailed(data.failed);
        setSent(data.sent);
      })
      .catch((err) => console.log(err));
  };

  React.useEffect(() => {
    console.log(sent);
    setLoader(false)
    return () => {
      console.log("");
    };
  }, [sent, failed]);

  return (
    <Mobile>
      <div className="mass_mail">
        <select
          className="selector"
          onChange={handleChangeYear}
          value={yearM}
          name="yearM"
          id="yearM"
          required
        >
          <option> Choisir annee</option>
          <option value="2021">2021</option>
          <option value="2020">2020</option>
          <option value="2019">2019</option>
        </select>

        <select
          onChange={handleChangeMonth}
          value={monthM}
          className="selector"
          name="monthM"
          id="monthM"
          required
        >
          <option> Choisir le mois</option>
          <option value="01">janvier</option>
          <option value="02">fevrier</option>
          <option value="03">mars</option>
          <option value="04">avril</option>
          <option value="05">mai</option>
          <option value="06">juin</option>
          <option value="07">juillet</option>
          <option value="08">aout</option>
          <option value="09">septembre</option>
          <option value="10">octobre</option>
          <option value="11">novembre</option>
          <option value="12">decembre</option>
        </select>

        <Button1
          proceed={handleMassSend}
          disabled={false}
          width={6.8}
          height={2}
        >
          <span>Envoyer </span>
          <FaRegEnvelope />
        </Button1>
      
        
      </div>
      
                
          <div className="email_status">
          
          
              <div className="email_success">
              <h2>Succes d'envoi</h2>
                {sent && Object.entries(sent).map(([k, v], i) => (
                  <h4> {v} </h4> 
                ))}
              </div>
           
              <div className="email_fail">
              <h2>Echec d'envoi</h2>
                {failed && Object.entries(failed).map(([k, v], i) => (
                  <h4> {v} </h4>
                ))}
              </div>
          </div>
      
      
    </Mobile>
  );
};

export default MassMail;
