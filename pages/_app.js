/** @format */
import "antd/dist/antd.css";
import "../styles/globals.scss";

import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";
import Head from "next/head";
import { QueryClient, QueryClientProvider, useQuery } from "react-query";
import { ReactQueryDevtools } from "react-query/devtools";
import { ProductProvider } from "../contexts/ProductsContext";
import Layout from "../components/layout/Layout";

const queryClient = new QueryClient();

function MyApp({ Component, pageProps }) {
  return (
    <>
      <Head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </Head>
      <QueryClientProvider client={queryClient}>
        <ProductProvider>
          <Layout>
            <Component {...pageProps} />
          </Layout>
        </ProductProvider>
        {/* <ReactQueryDevtools initialIsOpen /> */}
      </QueryClientProvider>
    </>
  );
}

export default MyApp;
