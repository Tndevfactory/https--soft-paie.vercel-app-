/** @format */

import Head from 'next/head';
import React from 'react';

import styles from '../styles/Home.module.css';
import axios from 'axios';

import { QueryClient, QueryClientProvider, useQuery } from 'react-query';
import { ReactQueryDevtools } from 'react-query/devtools';

const apiGet = () => {
	const response = axios.get('https://jsonplaceholder.typicode.com/users').then((res) => res.data);
	return response;
};

export default function Home() {
	const { isLoading, error, data, isFetching } = useQuery('users', apiGet);

	if (isLoading) return 'Loading...';

	if (error) return 'An error has occurred: ' + error.message;

	return (
		<div className={styles.container}>
			{data.length > 0 &&
				data?.map((item) => <li key={item.id}> {item.website} </li>)}

			<ReactQueryDevtools initialIsOpen />
		</div>
	);
}
