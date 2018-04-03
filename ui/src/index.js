import React from 'react';
import ReactDOM from 'react-dom';
import Layout from './Layout';
import registerServiceWorker from './registerServiceWorker';
import config from 'react-global-configuration';
import * as Notifications from './stores/Notifications';
import 'typeface-roboto';
import 'typeface-roboto-mono';
import * as UserAction from './actions/UserAction';

const defaultDevConfig = {
    url: 'http://localhost:80/',
};

const {port, hostname, protocol} = window.location;
const slashes = protocol.concat('//');
const url = slashes.concat(hostname.concat(':', port));
const urlWithSlash = url.endsWith('/') ? url : url.concat('/');

const defaultProdConfig = {
    url: urlWithSlash,
};

(function clientJS() {
    Notifications.requestPermission();

    if (process.env.NODE_ENV === 'production') {
        config.set(window.config || defaultProdConfig);
    } else {
        config.set(window.config || defaultDevConfig);
    }
    UserAction.checkIfAlreadyLoggedIn();
    ReactDOM.render(<Layout/>, document.getElementById('root'));
    registerServiceWorker();
}());
