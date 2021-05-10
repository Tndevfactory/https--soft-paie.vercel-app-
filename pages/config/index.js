/** @format */
import { motion } from "framer-motion";
import React from "react";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import { Device } from "../../components/devices/Device";

import Config from "../../components/config/Config1";

const Desktop = styled(motion.div)`
  //background: green;
  min-height: 77vh;
  color: white;

  h3 {
    color: red;
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    background: indigo;
  }
`;

// export const getServerSideProps = async () => {
//   const dt = await apiGet();

//   return { props: { dt } };
// };{ dt }

export default function Config_page() {
  const queryClient = useQueryClient();

  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet } = prodMethods;
  const { ui, switchMode } = prodStates;

  // const { isLoading, error, data } = useQuery("products", apiGet, {
  //   initialData: dt,
  //   initialStale: true,
  // });

  // const mDelete = useMutation((id) => apiDelete(id), {
  //   onSuccess: () => queryClient.invalidateQueries("products"),
  // });

  // const mUpdate = useMutation((values) => apiUpdate(values));

  // if (isLoading) return <div>loading ...</div>;

  // if (error) return "An error has occurred: " + error.message;

  // if (mDelete.isError) return "An error has occurred: " + mDelete.error.message;

  return (
    <Mobile ui={ui} switchMode={switchMode}>
      <Config />
    </Mobile>
  );
}
