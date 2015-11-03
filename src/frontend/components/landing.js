import React from 'react';
import geolocator from 'geolocator';
import classNames from 'classnames';
import 'style/landing';

// geolocator needs to a global variable for the locateIp fallback method
window.geolocator = geolocator;

export default class Landing extends React.Component {
	constructor() {
		super();

		this.state = {
			inputLocation: false,
			location: null,
			formErrors: {
				food: false,
				location: false
			}
		};
	}

	onGeoSuccess(location) {
		this.setState({ location: location.address.region });
	}

	onGeoError(error) {
	}

	onChooseLocation(e) {
		e.preventDefault();
		this.setState({ inputLocation: true });
	}

	onSubmit(e) {
		e.preventDefault();

		let food = this.refs.food.value.trim();
		let location = this.state.inputLocation ? this.refs.location.value.trim() : this.state.location;

		if(location && food) {
			this.setState({ formErrors: { food: false, location: false }});
		}
		else {
			return this.setState({ formErrors: { food: !food, location: !location }});
		}

	}

	componentWillMount() {
		let options = { enableHighAccuracy: true, timeout: 1000, maximumAge: 1000 };
		geolocator.locate(
			this.onGeoSuccess.bind(this), 
			this.onGeoError.bind(this), 
			true, options, false
		);
	}

	render() {
		let location;
		let onChooseLocation = this.onChooseLocation.bind(this);
		let foodClass = classNames({ error: this.state.formErrors.food });
		let locationClass = classNames({ error: this.state.formErrors.location });

		if(this.state.location) {
			location = (
				<span className="location">
					in regio <span className="highlight">{this.state.location}</span>, of kies een <a href="#" onClick={onChooseLocation}>andere locatie</a>
				</span>
			);
		}
		else {
			location = (
				<span className="location">kies een <a href="#" onClick={onChooseLocation}>locatie</a></span>
			);
		}

		if(this.state.inputLocation) {
			location = (
				<input ref="location" name="location" type="text" placeholder="regio" className={locationClass}/>
			);
		}


		return (
			<div className="landing">
				<form onSubmit={this.onSubmit.bind(this)}>
					<h2>waar heb je zin in?</h2>
					<input ref="food" name="food" type="text" placeholder="bijv. rijst, hutspot of barbeque" className={foodClass} />
					<div className="options">
						{location}
						<button type="submit" className="button button-primary">zoeken</button>
					</div>
				</form>
			</div>
		);
	}
}