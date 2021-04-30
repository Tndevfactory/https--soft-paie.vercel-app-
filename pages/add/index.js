/** @format */
import { useRouter } from 'next/router';
import Head from 'next/head';
import React from 'react';
import styles from './Add.module.css';
import Swal from 'sweetalert2';
import Loader from 'react-loader-spinner';

import {
	QueryClient,
	QueryClientProvider,
	useQuery,
	useMutation,
	useQueryClient,
} from 'react-query';

import { ProdCtx } from '../../contexts/ProductsContext';

export default function Addp() {
	const queryClient = useQueryClient();
	const [prodMethods, prodStates] = ProdCtx();
	const { apiAdd } = prodMethods;
	const {} = prodStates;

	const router = useRouter();

	const mutation = useMutation((values) => apiAdd(values));

	if (mutation.isLoading)
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
	if (mutation.isError)
		return <div>An error occurred: {mutation.error.message}</div>;
	if (mutation.isSuccess) {
		Swal.fire({
			title: 'Do you want to ---save the changes?',
			showDenyButton: true,
			showCancelButton: true,
			confirmButtonText: `Save`,
			denyButtonText: `BACK TO LIST`,
		}).then((result) => {
			/* Read more about isConfirmed, isDenied below */
			if (result.isConfirmed) {
				Swal.fire('Saved!', '', 'success');
			} else if (result.isDenied) {
				router.push('/');
				//Swal.fire('Changes are not saved', '', 'info');
			}
		});
	}

	return (
		<div>
			{mutation.isLoading ? (
				'Adding product...'
			) : (
				<>
					<button
						onClick={() => {
							mutation.mutate({ description: '7777777777777', price: 130 });
						}}>
						Add product
					</button>

					<button onClick={() => router.push('/')}>back</button>
				</>
			)}
		</div>
	);
}
