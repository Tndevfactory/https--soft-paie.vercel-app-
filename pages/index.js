/** @format */

import Head from 'next/head';
import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/router';
import Loader from 'react-loader-spinner';
import styles from '../styles/Home.module.css';
import { useQuery, useMutation, useQueryClient } from 'react-query';
import { ProdCtx, apiGet } from '../contexts/ProductsContext';

// getStaticProps
// getServerSideProps;

export const getServerSideProps = async () => {
	const dt = await apiGet();

	return { props: { dt } };
};

export default function Home({ dt }) {
	const queryClient = useQueryClient();
	const router = useRouter();

	const [prodMethods, prodStates] = ProdCtx();
	const { apiGet, apiShow, apiDelete, apiUpdate } = prodMethods;
	const {} = prodStates;

	const { isLoading, error, data, isFetching } = useQuery('products', apiGet, {
		initialData: dt,
		initialStale: true,
	});

	const mDelete = useMutation((id) => apiDelete(id), {
		onSuccess: () => queryClient.invalidateQueries('products'),
	});

	const mUpdate = useMutation((values) => apiUpdate(values));

	if (isLoading)
		return (
			<div
				className='spinner'
				style={{
					float: 'right',
					marginRight: '19px',
				}}>
				<Loader
					type='Bars'
					color='#00BFFF'
					height={70}
					width={70}
					timeout={3000} //3 secs
				/>
			</div>
		);

	if (error) return 'An error has occurred: ' + error.message;

	if (mDelete.isError) return 'An error has occurred: ' + mDelete.error.message;

	return (
		<div className={styles.container}>
			<button onClick={() => router.push('/add')}>add</button>

			{data?.length > 0 &&
				data?.map((item) => (
					<div key={item.id}>
						<br />
						{item.description}
						{item.price}

						<li>
							<Link href='/update/[upd]' as={`/update/${item.id}`}>
								<a
									onMouseEnter={async () => {
										await queryClient.prefetchQuery(
											['product', item.id],
											() => apiShow(item.id),
											{
												staleTime: 10 * 1000, // only prefetch if older than 10 seconds
											}
										);
									}}>
									{' '}
									update {item.id}{' '}
								</a>
							</Link>
						</li>
						<button
							onClick={() => {
								mDelete.mutate(item.id);
							}}
							disabled={mDelete.isLoading}>
							delete
						</button>
					</div>
				))}
		</div>
	);
}
