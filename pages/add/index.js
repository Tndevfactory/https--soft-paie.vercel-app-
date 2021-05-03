/** @format */
import { useRouter } from "next/router";
import Head from "next/head";
import React from "react";
import styles from "./Add.module.css";
import { motion } from "framer-motion";
import Swal from "sweetalert2";
import Loader from "react-loader-spinner";

import {
  QueryClient,
  QueryClientProvider,
  useQuery,
  useMutation,
  useQueryClient,
} from "react-query";

import { ProdCtx } from "../../contexts/ProductsContext";

export default function Addp() {
  const queryClient = useQueryClient();
  const [prodMethods, prodStates] = ProdCtx();
  const { apiAdd } = prodMethods;
  const {} = prodStates;

  const router = useRouter();

  const mutation = useMutation((values) => apiAdd(values));

  if (mutation.isLoading)
    return (
      <motion.div
        exit={{ opacity: 0 }}
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
      </motion.div>
    );
  if (mutation.isError)
    return <div>An error occurred: {mutation.error.message}</div>;
  if (mutation.isSuccess) router.push("/");

  return (
    <motion.div
      exit={{ opacity: 0 }}
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
    >
      {mutation.isLoading ? (
        "Adding product..."
      ) : (
        <>
          <button
            onClick={() => {
              mutation.mutate({ description: "7777777777777", price: 130 });
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
