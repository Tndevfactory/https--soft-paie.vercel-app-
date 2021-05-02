/** @format */

import { useMediaQuery } from 'react-responsive';

//func good solution for pure react client but not ssr next
// export const AppDesktop = ({ children }) => {
// 	const isDesktop = useMediaQuery({ minWidth: 992 });
// 	return isDesktop ? children : null;
// };

// export const AppTablet = ({ children }) => {
// 	const isTablet = useMediaQuery({ minWidth: 768, maxWidth: 991 });
// 	return isTablet ? children : null;
// };

// export const AppMobile = ({ children }) => {
// 	const isMobile = useMediaQuery({ maxWidth: 767 });
// 	return isMobile ? children : null;
// };

//boolean this boolean remain valid for ssr nextjs
export const CheckMediaQuery = () => {
	const isDesktop = useMediaQuery({ minWidth: 992 });
	const isMobile = useMediaQuery({ maxWidth: 767 });
	const isTablet = useMediaQuery({ minWidth: 768, maxWidth: 991 });

	return {
		isDesktop,
		isMobile,
		isTablet,
	};
};
