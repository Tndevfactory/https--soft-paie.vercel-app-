/** @format */

import React from 'react';
import AppFooter from '../appFooter/AppFooter';
import AppHeader from '../appHeader/AppHeader';

const Layout = ({ children }) => {
	return (
		<div>
			<AppHeader />

			{children}

			<AppFooter />
		</div>
	);
};

export default Layout;
