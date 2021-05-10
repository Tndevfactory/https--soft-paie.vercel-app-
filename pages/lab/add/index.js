/** @format */
import { useRouter } from "next/router";
import React from "react";
import styles from "./Add.module.scss";
import { motion } from "framer-motion";
import Loader from "react-loader-spinner";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";
import { useMutation } from "react-query";
import { ProdCtx } from "../../../contexts/ProductsContext";

export default function Addp() {
  const router = useRouter();

  const [prodMethods, prodStates] = ProdCtx();
  const { apiAdd } = prodMethods;
  const {} = prodStates;

  const mutation = useMutation((values) => apiAdd(values));

  if (mutation.isLoading)
    return (
      <div>
        <div
          className="Bars"
          style={{
            float: "right",
            marginRight: "19px",
          }}
        >
          <Loader
            type="ThreeDots"
            color="#00afb9"
            height={70}
            width={70}
            timeout={3000} //3 secs
          />
        </div>
      </div>
    );

  if (mutation.isError)
    return <div>An error occurred: {mutation.error.message}</div>;

  if (mutation.isSuccess) router.push("/");

  return (
    <div>
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
    </div>
  );
}
