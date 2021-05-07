/** @format */

import React, { createContext, useContext, useState } from "react";
import axios from "axios";

export const ProductContext = createContext(null);

export const ProdCtx = () => {
  return useContext(ProductContext);
};

const BASE_URL_SERVER = "https://tndev3.tn-devfactory.com/api";
const api = axios.create({
  //baseURL: BASE_URL_SERVER,
  baseURL: process.env.BASE_URL,
});

// console.log('process.env.NODE_ENV');
// console.log(process.env.NODE_ENV);
// console.log('process.env.BASE_URL');
// console.log(process.env.BASE_URL);

api.interceptors.request.use(function (config) {
  //const token = localStorage.getItem('token');
  const token = "eyJ0eXAiOiJKV1QiLCJNTEwMTguNTqhfE0crsX6gTpywbEeZHVLDyyYR9yg";

  config.headers.Authorization = token ? `Bearer ${token}` : "";
  return config;
});

export const apiGet = async () => {
  const { data } = await api.get("/products");
  return data;
};
export const apiShow = async (id) => {
  const { data } = await api.get(`/products/${id}`);
  return data;
};

export const apiAdd = async (values) => {
  const { data } = await api.post("/products", values);
  return data;
};

export const apiUpdate = async (id, values) => {
  const { data } = await api.put(`/products/${id}`, values);
  return data;
};

export const apiDelete = async (id) => {
  const { data } = await api.delete(`/products/${id}`);
  return data;
};

const hasWindow = typeof window !== "undefined";

const getDimensions = () => {
  const width = hasWindow ? window.innerWidth : null;
  const height = hasWindow ? window.innerHeight : null;
  return {
    width,
    height,
  };
};

// const getElementDimensions = (myRef) => {
//   const width = myRef ? null : myRef.offsetWidth;
//   const height = myRef ? null : myRef.offsetHeight;

//   return { width, height };
// };

export const ProductProvider = ({ children }) => {
  const [switchMode, setSwitchMode] = useState(false);

  const methods = {
    apiGet,
    apiAdd,
    apiShow,
    apiUpdate,
    apiDelete,
    getDimensions,
    //getElementDimensions,
  };

  const states = {
    switchMode,
    setSwitchMode,
    hasWindow,
  };

  return (
    <ProductContext.Provider value={[methods, states]}>
      {children}
    </ProductContext.Provider>
  );
};
