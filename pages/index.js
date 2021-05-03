/** @format */
import { Row, Col } from "antd";
import Head from "next/head";
import React, { useState } from "react";
import { motion } from "framer-motion";
import { useRouter } from "next/router";
import Loader from "react-loader-spinner";
import styles from "../styles/Home.module.scss";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../contexts/ProductsContext";
import Cards from "../components/card/Cards";

export const getServerSideProps = async () => {
  const dt = await apiGet();

  return { props: { dt } };
};

export default function Home({ dt }) {
  const queryClient = useQueryClient();
  const router = useRouter();

  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiShow, apiDelete, apiUpdate } = prodMethods;
  const {} = prodStates;

  const { isLoading, error, data, isFetching } = useQuery("products", apiGet, {
    initialData: dt,
    initialStale: true,
  });

  const mDelete = useMutation((id) => apiDelete(id), {
    onSuccess: () => queryClient.invalidateQueries("products"),
  });

  const mUpdate = useMutation((values) => apiUpdate(values));

  if (isLoading)
    return (
      <div
        className="spinner"
        style={{
          float: "right",
          marginRight: "19px",
        }}
      >
        <Loader
          type="Bars"
          color="#00BFFF"
          height={70}
          width={70}
          timeout={3000} //3 secs
        />
      </div>
    );

  if (error) return "An error has occurred: " + error.message;

  if (mDelete.isError) return "An error has occurred: " + mDelete.error.message;

  return (
    <motion.div
      exit={{ opacity: 0 }}
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
    >
      <Row justify="center" className={styles.main} gutter={[16, 16]}>
        {data?.length > 0 &&
          data?.map((item) => (
            <Col key={item.id} className={styles.col}>
              <Cards mDelete={mDelete} item={item} />
            </Col>
          ))}
      </Row>
    </motion.div>
  );
}
