/** @format */

import Head from 'next/head';
import { useRouter } from 'next/router';
import React, { useState } from 'react';
import styles from './Add.module.css';
import Loader from 'react-loader-spinner';
import { useQuery, useMutation, useQueryClient } from 'react-query';

import { ProdCtx, apiShow } from '../../contexts/ProductsContext';

export const getServerSideProps = async ({ params: { upd } }) => {
	const dt = await apiShow(upd);

	return { props: { dt } };
};

export default function Updatep({ dt }) {
	console.log(dt);
	const queryClient = useQueryClient();

	const router = useRouter();
	const { upd } = router.query;

	const [prodMethods, prodStates] = ProdCtx();
	const { apiAdd, apiUpdate, apiShow } = prodMethods;
	const {} = prodStates;

	const [description, setDescription] = useState('');
	const [price, setPrice] = useState('');

	const { isLoading, error, data, isFetching } = useQuery(
		['product', upd],
		() => apiShow(upd),
		{
			initialData: dt,
			initialStale: true,
		}
	);

	const mUpdate = useMutation(() => apiUpdate(upd, values), {
		onSuccess: () => queryClient.invalidateQueries('products'),
	});

	let values = {
		description,
		price,
	};

	React.useEffect(() => {
		setDescription(data?.description);
		setPrice(data?.price);
		values = {
			description,
			price,
		};
	}, [data]);

	const apd = (e) => {
		e.preventDefault();
		console.log(values);
		mUpdate.mutate(upd, values);
	};
	if (isLoading)
		return (
			<div
				className='Bars'
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

	return (
		<div>
			<form onSubmit={apd}>
				<input
					value={description ?? ''}
					type='text'
					onChange={(e) => setDescription(e.target.value)}
				/>
				<input
					value={price ?? ''}
					type='text'
					onChange={(e) => setPrice(e.target.value)}
				/>

				<button type='submit'>update</button>
			</form>
			<button onClick={() => router.push('/')}>back</button>
		</div>
	);
}
