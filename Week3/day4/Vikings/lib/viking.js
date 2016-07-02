'use strict';

class Viking{
	constructor(name, health, strength) {
		this.name = name;
		this.health= health;
		this.strength = strength;
	}

	attack (otherNpc) {
    	otherNpc.health = otherNpc.health - this.strength;
    	console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength} points of damage.`)
    }

}
module.exports = Viking;

// var Lad = new Viking("Lad", 12, 20)
// var Pete = new Viking("Pete", 14, 2)
// var Allison = new Viking("Alison", 6, 6)
// var Andres = new Viking("Andres", 10, 3)
// var Grayceli = new Viking("Grayceli", 13, 3)
// var Josh = new Viking("Josh", 5, 4)


