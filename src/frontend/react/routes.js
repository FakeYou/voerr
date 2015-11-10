import React from 'react';
import { Route, IndexRoute } from 'react-router';

import App from 'react/App';
import LoginPage from 'react/pages/LoginPage';
import RegisterAccountPage from 'react/pages/RegisterAccountPage';
import SearchPage from 'react/pages/SearchPage';
import SearchResultPage from 'react/pages/SearchResultPage';
import SearchItemPage from 'react/pages/SearchItemPage';
import AccountPage from 'react/pages/AccountPage';
import NewDishPage from 'react/pages/NewDishPage';
import Upload from 'react/components/Upload';

export default (
	<Route name="home" path="/" component={App}>
		<IndexRoute name="search" component={SearchPage} />
		
		<Route name="login" path="/inloggen" components={LoginPage}/>
		<Route name="register" path="/registeren" components={RegisterAccountPage}/>

		<Route name="account" path="/account" components={AccountPage}/>

		<Route name="newDish" path="/nieuw-gerecht" components={NewDishPage}/>

		<Route name="results" path="s/:location/:term" components={SearchResultPage} />
		<Route name="dish" path="s/:location/:term/:id" components={SearchItemPage} />
		<Route path="upload" components={Upload}/>
	</Route>
);