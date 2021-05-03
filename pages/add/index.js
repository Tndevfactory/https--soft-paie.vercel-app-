/** @format */
import { useRouter } from "next/router";
import React from "react";
import styles from "./Add.module.css";
import { motion } from "framer-motion";
import { useMutation } from "react-query";
import { ProdCtx } from "../../contexts/ProductsContext";

export default function Addp() {
  const router = useRouter();

  const [prodMethods, prodStates] = ProdCtx();
  const { apiAdd } = prodMethods;
  const {} = prodStates;

  const mutation = useMutation((values) => apiAdd(values));

  if (mutation.isLoading) return <div>loading ...</div>;

  if (mutation.isError)
    return <div>An error occurred: {mutation.error.message}</div>;

  if (mutation.isSuccess) router.push("/");

  return (
    <motion.div exit={{ opacity: 0 }}>
      {mutation.isLoading ? (
        "Adding product..."
      ) : (
        <>
          <button
            onClick={() => {
              mutation.mutate({ description: "shoes ", price: 500.13 });
            }}
          >
            Add product
          </button>

          <button onClick={() => router.push("/")}>back</button>
        </>
      )}
    </motion.div>
  );
}
