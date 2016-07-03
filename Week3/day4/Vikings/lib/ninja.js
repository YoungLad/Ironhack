'use strict'
class Ninja{
	constructor(name, health, strength, dodge) {
		this.name = name;
		this.health = health;
		this.strength = strength;
		this.dodge = dodge;
	}

	attack (otherNpc) {
    	if (otherNpc.dodge == true ) {	
			otherNpc.health = otherNpc.health - (this.strength / 3)
			otherNpc.dodge = false;
			    	console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength / 3} points of damage.`)
	}
		else{
    		otherNpc.health = otherNpc.health - this.strength;
        	console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength} points of damage.`)
    }
}

}
module.exports = Ninja;