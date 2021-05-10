/** @format */
import { Row, Col } from "antd";
import React, { useState } from "react";
import { motion } from "framer-motion";
import styles from "../styles/Home.module.scss";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { ProdCtx, apiGet } from "../contexts/ProductsContext";
import Cards from "../components/card/Cards";
import Card_com from "../components/card/Card_com";

export const getServerSideProps = async () => {
  const dt = await apiGet();

  return { props: { dt } };
};

export default function Home({ dt }) {
  const queryClient = useQueryClient();

  const [prodMethods, prodStates] = ProdCtx();
  const { apiGet, apiDelete, apiUpdate } = prodMethods;
  const {} = prodStates;

  const { isLoading, error, data } = useQuery("products", apiGet, {
    initialData: dt,
    initialStale: true,
  });

  const mDelete = useMutation((id) => apiDelete(id), {
    onSuccess: () => queryClient.invalidateQueries("products"),
  });

  const mUpdate = useMutation((values) => apiUpdate(values));

  if (isLoading) return <div>loading ...</div>;

  if (error) return "An error has occurred: " + error.message;

  if (mDelete.isError) return "An error has occurred: " + mDelete.error.message;

  const easing = [0.6, -0.05, 0.01, 0.99];

  const fadeUp = {
    exit: {
      opacity: 0,
    },
    initial: {
      opacity: 0,
    },
    animate: {
      opacity: 1,

      transition: {
        duration: 0.1,
        ease: easing,
      },
    },
  };

  const fadestaggerUp = {
    animate: {
      transition: {
        staggerChildren: 0.1,
      },
    },
  };

  return (
    <motion.div
      variants={fadeUp}
      initial="initial"
      animate="animate"
      exit="exit"
      className={styles.premain}
    >
      <div className={styles.secmain}>
        <Row justify="center" className={styles.main} gutter={[16, 16]}>
          {data?.length > 0 &&
            data?.map((item) => (
              <Col key={item.id} className={styles.col}>
                <Cards mDelete={mDelete} item={item} />
                {/* <Card_com /> */}
              </Col>
            ))}
        </Row>
      </div>
    </motion.div>
  );
}
