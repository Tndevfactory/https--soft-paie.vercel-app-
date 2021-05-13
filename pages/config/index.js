/** @format */
import { motion } from "framer-motion";
import React from "react";
import { useQuery, useMutation, useQueryClient } from "react-query";
import styled, { css } from "styled-components";
import { ProdCtx, apiGet } from "../../contexts/ProductsContext";
import { Device } from "../../components/devices/Device";
import chroma from "chroma-js";
import Config from "../../components/config/Config1";
import Alert1 from "../../components/alerts/Alert1";
import Loader from "../../components/loader/Loader1";
import Footer from "../../components/footer/Footer";
import Navbar from "../../components/navbar/Navbar";

const Desktop = styled(motion.div)`
  // min-height: 80vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-flow: column nowrap;
  .expandable {
    color: ${({ switchMode, ui }) =>
      switchMode ? chroma("#ddd").darken(1) : chroma("#ddd")};
  }
`;

const Mobile = styled(Desktop)`
  @media ${Device.mobile} {
    .expandable {
      display: none;
    }
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
      <Navbar />
      <Config />
      <Footer fixed={true} />
    </Mobile>
  );
}
