/** @format */
import Link from 'next/link';
import React from 'react';
import { Card } from 'antd';
import { useRouter } from 'next/router';

import styles from './Card.module.scss';
import { format, parseISO } from 'date-fns';
import { useQuery, useMutation, useQueryClient } from 'react-query';
import { ProdCtx, apiGet } from '../../contexts/ProductsContext';

const { Meta } = Card;

const Cards = ({ item, mDelete }) => {
	const queryClient = useQueryClient();
	const router = useRouter();

	const [prodMethods, prodStates] = ProdCtx();
	const { apiGet, apiShow, apiDelete, apiUpdate } = prodMethods;
	const {} = prodStates;

	return (
		<div>
			<Card
				className={styles.card}
				hoverable
				cover={<img alt='example' src='https://picsum.photos/400/400' />}>
				<Meta title={item.description} description={item.price} />
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
							update {item.id}-- date{' '}
							{format(parseISO(item.created_at), 'dd/MM/yyyy-kk:mm:ss')}
						</a>
					</Link>
					<button onClick={() => router.push('/add')}>add</button>
				</li>
				<button
					onClick={() => {
						mDelete.mutate(item.id);
					}}
					disabled={mDelete.isLoading}>
					delete
				</button>
			</Card>
		</div>
	);
};

export default Cards;
