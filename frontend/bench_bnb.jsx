import React from 'react';
import ReactDOM from 'react-dom';

import * as APIUTIL from './util/session_api_util';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  window.signup = APIUTIL.signup;
  window.login = APIUTIL.login;
  window.logout = APIUTIL.logout;
  ReactDOM.render(<h1>HauntedHouseBnB</h1>, root);
});
