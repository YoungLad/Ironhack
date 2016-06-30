'use strict';

class Car{
	constructor(model, noise, wheels){
		this.model = model;
		this.noise = noise;
		this.wheels = 4;
	}


	sound(){
		console.log(this.noise + "BAP BAP BAP");
	}
}

module.exports = Car;