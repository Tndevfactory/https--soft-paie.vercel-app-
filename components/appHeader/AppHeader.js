/** @format */
import React, { useState } from 'react';
import { Menu } from 'antd';
import {
	MailOutlined,
	AppstoreOutlined,
	SettingOutlined,
} from '@ant-design/icons';

import styles from './Header.module.css';


const { SubMenu } = Menu;

const AppHeader = () => {
	const [current, setCurrent] = useState('mail');


	const handleClick = (e) => {
		console.log('click ', e);
		setCurrent(e.key);
	};

	

	return (

		<div className={ styles.menuPlaceholder }>
			
		<Menu
			className={ styles.desktopMenu }
			onClick={handleClick}
			selectedKeys={current}
			mode='horizontal'
			>

			<Menu.Item key='mail' icon={<MailOutlined />}>
				Navigation One
			</Menu.Item>
			<Menu.Item key='app' disabled icon={<AppstoreOutlined />}>
				Navigation Two
			</Menu.Item>
			<SubMenu
				key='SubMenu'
				icon={<SettingOutlined />}
				title='Navigation Three - Submenu'>
				<Menu.ItemGroup title='Item 1'>
					<Menu.Item key='setting:1'>Option 1</Menu.Item>
					<Menu.Item key='setting:2'>Option 2</Menu.Item>
				</Menu.ItemGroup>
				<Menu.ItemGroup title='Item 2'>
					<Menu.Item key='setting:3'>Option 3</Menu.Item>
					<Menu.Item key='setting:4'>Option 4</Menu.Item>
				</Menu.ItemGroup>
			</SubMenu>
			<Menu.Item key='alipay'>
				<a href='https://ant.design' target='_blank' rel='noopener noreferrer'>
					Navigation Four - Link
				</a>
			</Menu.Item>
		</Menu >
			<Menu
				className={styles.mobileMenu}
        onClick={handleClick}
        style={{ width: 256 }}
        defaultSelectedKeys={['1']}
        defaultOpenKeys={['sub1']}
        mode="inline"
      >
        <SubMenu key="sub1" icon={<MailOutlined />} title="Navigation One">
          <Menu.ItemGroup key="g1" title="Item 1">
            <Menu.Item key="1">Option 1</Menu.Item>
            <Menu.Item key="2">Option 2</Menu.Item>
          </Menu.ItemGroup>
          <Menu.ItemGroup key="g2" title="Item 2">
            <Menu.Item key="3">Option 3</Menu.Item>
            <Menu.Item key="4">Option 4</Menu.Item>
          </Menu.ItemGroup>
        </SubMenu>
        <SubMenu key="sub2" icon={<AppstoreOutlined />} title="Navigation Two">
          <Menu.Item key="5">Option 5</Menu.Item>
          <Menu.Item key="6">Option 6</Menu.Item>
          <SubMenu key="sub3" title="Submenu">
            <Menu.Item key="7">Option 7</Menu.Item>
            <Menu.Item key="8">Option 8</Menu.Item>
          </SubMenu>
        </SubMenu>
        <SubMenu key="sub4" icon={<SettingOutlined />} title="Navigation Three">
          <Menu.Item key="9">Option 9</Menu.Item>
          <Menu.Item key="10">Option 10</Menu.Item>
          <Menu.Item key="11">Option 11</Menu.Item>
          <Menu.Item key="12">Option 12</Menu.Item>
        </SubMenu>
      </Menu>
	</div>
	);
};

export default AppHeader;

