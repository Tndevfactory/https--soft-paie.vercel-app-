/** @format */
import "antd/dist/antd.css";
import "../styles/globals.scss";

import Head from "next/head";
import { QueryClient, QueryClientProvider } from "react-query";
import { ReactQueryDevtools } from "react-query/devtools";
import { ProductProvider } from "../contexts/ProductsContext";
import Layout from "../components/layout/Layout";

const queryClient = new QueryClient();

function MyApp({ Component, pageProps, router }) {
  return (
    <>
      <Head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </Head>
      <QueryClientProvider client={queryClient}>
        <ProductProvider>
          <Layout>
            <Component {...pageProps} key={router.route} />
          </Layout>
        </ProductProvider>
        <ReactQueryDevtools initialIsOpen />
      </QueryClientProvider>
    </>
  );
}

export default MyApp;
