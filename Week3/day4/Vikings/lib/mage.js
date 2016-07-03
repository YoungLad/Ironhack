'use strict'
var Ninja = require("./ninja.js");

class Mage{
	constructor(name, health, strength, mana) {
		this.name = name;
		this.health = health;
		this.strength = strength;
		this.mana = mana;
	}

	attack (otherNpc) {
		var rand = Math.random();

		if (this.mana > 0) {
			otherNpc.health = otherNpc.health - (this.strength*2);
			this.mana = this.mana -1;
			console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength*2} points of damage.`)
	}
		else if (otherNpc.dodge == true ) {	
			otherNpc.health = otherNpc.health - (this.strength / 3)
			otherNpc.dodge = false;
			    	console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength / 3} points of damage.`)

	}

		else {
    			otherNpc.health = otherNpc.health - this.strength;
    	    	console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength} points of damage.`)
    }
}

}
module.exports = Mage;