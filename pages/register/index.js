import { Row, Col } from "antd";
import React, { useState } from "react";
import { motion } from "framer-motion";
import styles from "./Register.module.scss";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import Register1 from "../../components/registers/Register1";

const Register = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const { switchMode } = prodStates;
  return (
    <div className={styles.mycontainer}>
      <div className={styles.myelement}>
        <Register1 switchMode={switchMode} />
      </div>
    </div>
  );
};

export default Register;
