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
				Lets go for a <FaBeer />?{' '}
			</h3>

			<Space>
				Space
				<Button type='primary'>Button</Button>
				<Upload>
					<Button>
						<UploadOutlined /> Click to Upload
					</Button>
				</Upload>
				<Popconfirm
					title='Are you sure delete this task?'
					okText='Yes'
					cancelText='No'>
					<Button>Confirm</Button>
				</Popconfirm>
			</Space>
		</div>
	);
};

export default AppFooter;
