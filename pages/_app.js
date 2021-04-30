/** @format */

import '../styles/globals.css';

import 'react-loader-spinner/dist/loader/css/react-spinner-loader.css';

import { QueryClient, QueryClientProvider, useQuery } from 'react-query';
import { ReactQueryDevtools } from 'react-query/devtools';
import { ProductProvider } from '../contexts/ProductsContext';
import Layout from '../components/Layout';

const queryClient = new QueryClient();

function MyApp({ Component, pageProps }) {
	return (
		<QueryClientProvider client={queryClient}>
			<ProductProvider>
				<Layout>
					<Component {...pageProps} />
				</Layout>
			</ProductProvider>
			<ReactQueryDevtools initialIsOpen />
		</QueryClientProvider>
	);
}

export default MyApp;
