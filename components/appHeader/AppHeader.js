/** @format */
import React, { useState } from 'react';
import { Row, Col, Menu, Switch, Typography } from 'antd';
import { LoginOutlined } from '@ant-design/icons';
import styles from './Header.module.scss';
import { AiOutlineLogin } from 'react-icons/ai';

const { SubMenu } = Menu;
const { Title } = Typography;

const AppHeader = ({ switchMode, setSwitchMode }) => {
	const [current, setCurrent] = useState('mail');

	const onChange = (checked) => {
		//console.log(`switch to ${checked}`);
		console.log('state ' + switchMode);
		setSwitchMode(checked);
	};

	const handleClick = (e) => {
		console.log('click ', e);
		setCurrent(e.key);
	};

	return (
		<Row className={switchMode ? styles.navbar_dk : styles.navbar_ctl}>
			<Col flex='200px' className={styles.brand}>
				{' '}
				<Title level={4}>h4. Ant Design</Title>
			</Col>
			<Col flex='auto' className={styles.halfMenu}>
				<div className={styles.loginSwitch}>
					<Title level={4}>
						login
						<AiOutlineLogin />
					</Title>
					<Switch
						className={
							switchMode ? styles.switchUnChecked : styles.switchChecked
						}
						onChange={onChange}
					/>
				</div>
			</Col>
		</Row>
	);
};

export default AppHeader;
