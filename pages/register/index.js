import { Row, Col } from "antd";
import React, { useState } from "react";
import { motion } from "framer-motion";

import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx } from "../../contexts/ProductsContext";
import Register1 from "../../components/registers/Register1";

const Register = () => {
  const [prodMethods, prodStates] = ProdCtx();
  const {} = prodMethods;
  const { switchMode } = prodStates;
  return (
    <div>
      <div>
        <Register1 switchMode={switchMode} />
      </div>
    </div>
  );
};

export default Register;
