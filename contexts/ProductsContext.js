/** @format */

import React, { createContext, useContext, useState } from 'react';
import axios from 'axios';

export const ProductContext = createContext(null);

export const ProdCtx = () => {
	return useContext(ProductContext);
};

const api = axios.create({
	baseURL: process.env.BASE_URL,
});

api.interceptors.request.use(function (config) {
	//const token = localStorage.getItem('token');
	const token = 'eyJ0eXAiOiJKV1QiLCJNTEwMTguNTqhfE0crsX6gTpywbEeZHVLDyyYR9yg';

	config.headers.Authorization = token ? `Bearer ${token}` : '';
	return config;
});

export const apiGet = async () => {
	const { data } = await api.get('/products');
	return data;
};
export const apiShow = async (id) => {
	const { data } = await api.get(`/products/${id}`);
	return data;
};

export const apiAdd = async (values) => {
	const { data } = await api.post('/products', values);
	return data;
};

export const apiUpdate = async (id, values) => {
	const { data } = await api.put(`/products/${id}`, values);
	return data;
};

export const apiDelete = async (id) => {
	const { data } = await api.delete(`/products/${id}`);
	return data;
};

export const ProductProvider = ({ children }) => {
	const [var1, setVar1] = useState('t');

	const methods = {
		apiGet,
		apiAdd,
		apiShow,
		apiUpdate,
		apiDelete,
	};

	const states = {
		var1,
	};

	return (
		<ProductContext.Provider value={[methods, states]}>
			{children}
		</ProductContext.Provider>
	);
};
