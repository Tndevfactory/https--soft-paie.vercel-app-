/** @format */

import { useRouter } from "next/router";
import React, { useState } from "react";
import styles from "./Add.module.css";
import { useQuery, useMutation, useQueryClient } from "react-query";
import { motion } from "framer-motion";
import { ProdCtx, apiShow } from "../../../contexts/ProductsContext";

export const getServerSideProps = async ({ params: { upd } }) => {
  const dt = await apiShow(upd);

  return { props: { dt } };
};

export default function Updatep({ dt }) {
  const queryClient = useQueryClient();

  const router = useRouter();
  const { upd } = router.query;

  const [prodMethods, prodStates] = ProdCtx();
  const { apiUpdate, apiShow } = prodMethods;
  const {} = prodStates;

  const [description, setDescription] = useState("");
  const [price, setPrice] = useState("");

  const { isLoading, error, data, isFetching } = useQuery(
    ["product", upd],
    () => apiShow(upd),
    {
      initialData: dt,
      initialStale: true,
    }
  );

  const mUpdate = useMutation(() => apiUpdate(upd, values), {
    onSuccess: () => queryClient.invalidateQueries("products"),
  });

  let values = {
    description,
    price,
  };

  React.useEffect(() => {
    setDescription(data?.description);
    setPrice(data?.price);
    values = {
      description,
      price,
    };
  }, [data]);

  const apd = (e) => {
    e.preventDefault();
    mUpdate.mutate(upd, values);
  };
  if (isLoading) return <div>loading ....</div>;
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
    >
      <form onSubmit={apd}>
        <input
          value={description ?? ""}
          type="text"
          onChange={(e) => setDescription(e.target.value)}
        />
        <input
          value={price ?? ""}
          type="text"
          onChange={(e) => setPrice(e.target.value)}
        />

        <button type="submit">update</button>
      </form>
      <button onClick={() => router.push("/")}>back</button>
    </motion.div>
  );
}
