/** @format */
let url = '';
const env = process.env.NODE_ENV;
if (env == 'development') {
	url = 'http://127.0.0.1:8000/api';
} else if (env == 'production') {
	url = 'https://tndev3.tn-devfactory.com/api';
}

const path = require('path');
module.exports = {
	env: {
		BASE_URL: url,
	},
};
