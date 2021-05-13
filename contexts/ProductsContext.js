/** @format */

import React, { createContext, useContext, useState } from "react";
import axios from "axios";
import Cookies from "js-cookie";

export const ProductContext = createContext(null);

export const ProdCtx = () => {
  return useContext(ProductContext);
};

const BASE_URL_SERVER = "https://tndev3.tn-devfactory.com/api";
const api = axios.create({
  //baseURL: BASE_URL_SERVER,
  baseURL: process.env.BASE_URL,
});

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

export const ProductProvider = ({ children }) => {
  const [switchMode, setSwitchMode] = useState(false);

  const [notification, setNotification] = useState({
    notifType: "",
    notifMsg: "",
  });

  const [loader, setLoader] = useState(false);

  const uiVars = {
    // initial// from database config user
    dark: Cookies.get("dark") || "#001d3d",
    light: Cookies.get("light") || "#001d3d",

    source: "Source Sans Pro",
    roboto: "Roboto",
    lato: "Lato",
    open: "Open Sans",
    oswald: "Oswald",
  };

  // console.log('Cookies.get("dark")');
  // console.log(Cookies.get("dark"));
  React.useEffect(() => {
    setUi({
      ...ui,
      dark: Cookies.get("dark") || "#001d3d",
      light: Cookies.get("light") || "#7b2cbf",
    });
  }, []);

  const [ui, setUi] = useState({
    dark: "#001d3d",
    light: "#001d3d",

    navFont: uiVars.oswald,
    contentFont: uiVars.roboto,
    buttonFont: uiVars.oswald,
    footerFont: uiVars.lato,
  });

  const methods = {
    apiGet,
    apiAdd,
    apiShow,
    apiUpdate,
    apiDelete,
    //getDimensions,
    // getElementDimensions,
  };

  const states = {
    loader,
    setLoader,
    notification,
    setNotification,
    switchMode,
    setSwitchMode,
    // hasWindow,
    ui,
    setUi,
  };

  return (
    <ProductContext.Provider value={[methods, states]}>
      {children}
    </ProductContext.Provider>
  );
};
