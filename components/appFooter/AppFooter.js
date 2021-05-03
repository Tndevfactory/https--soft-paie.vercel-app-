/** @format */
import { FaBeer } from 'react-icons/fa';

import { Button, Space, Upload, Popconfirm } from 'antd';
import { UploadOutlined } from '@ant-design/icons';

import styles from './Footer.module.scss';

const AppFooter = ({ switchMode, setSwitchMode }) => {
	return (
		<div className={switchMode ? styles.footer_dk : styles.footer_ctl}>
			<h3>
				{' '}
				HELLO <FaBeer />?{' '}
			</h3>

			<Space>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime
				cupiditate rem ea similique. A repudiandae vero consequatur aliquam
				asperiores cumque eveniet? Quae, animi ipsam nesciunt reprehenderit
				aliquid facere a alias.
			</Space>
		</div>
	);
};

export default AppFooter;
