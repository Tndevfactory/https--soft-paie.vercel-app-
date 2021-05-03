/** @format */

import React from 'react';
import AppFooter from '../appFooter/AppFooter';
import AppHeader from '../appHeader/AppHeader';
import { ProdCtx } from '../../contexts/ProductsContext';
import styles from './Layout.module.scss';

const Layout = ({ children }) => {
	const [prodMethods, prodStates] = ProdCtx();
	const {} = prodMethods;
	const { switchMode, setSwitchMode } = prodStates;

	return (
		<>
			<AppHeader setSwitchMode={setSwitchMode} switchMode={switchMode} />
			{children}

			<AppFooter />
		</>
	);
};

export default Layout;
