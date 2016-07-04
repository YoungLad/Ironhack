'use strict'
var read = require('read');

class Game{
	constructor(raiders, targets){
		this.raiders = raiders
		this.targets = targets
	}
	
var randomInteger = require("./lib/random-integer");

	menu(){
		console.log(this.assaulters)
    	console.log("")

    	options = {
    prompt: "What's your name?\n>"
}
// Our options object, the prompt is simply what will appear in the command line when read is called

read(options, displayName)
// The prompt itself, passing options, and using our callback function after input

function displayName (err, name){
    console.log("Your name is: " + name)
}
// Outputs whatever the user has entered back to the console
	}

spawnH()	{
for (var i = 0; i < 100; i++){
  if (i < 10) {
    var health = randomInteger(1, 550);
    var strength = randomInteger(1, 5550);
    var theSaxon = new Saxon(health, strength);
    saxonTown.push(theSaxon);
    }
    if (i <80) {
        var health = randomInteger(100, 500);
        var strength = randomInteger(40, 500);
        var enemyViking = new Viking("viking", health, strength);
        saxonTown.push(enemyViking);

    }
    else if (i > 90) {
        var health = randomInteger(100, 200);
        var strength = randomInteger(40, 500);
        var enemyMage = new Mage("Mage", health, strength, 2);
        saxonTown.push(enemyMage);
    }
}
}

	spawnm(){
		{
for (var i = 0; i < 100; i++){
  if (i < 10) {
    var health = randomInteger(1, 550);
    var strength = randomInteger(1, 5550);
    var theSaxon = new Saxon(health, strength);
    saxonTown.push(theSaxon);
    }
    if (i <80) {
        var health = randomInteger(100, 500);
        var strength = randomInteger(40, 500);
        var enemyViking = new Viking("viking", health, strength);
        saxonTown.push(enemyViking);

    }
    else if (i > 90) {
        var health = randomInteger(100, 200);
        var strength = randomInteger(40, 500);
        var enemyMage = new Mage("Mage", health, strength, 2);
        saxonTown.push(enemyMage);
    }
}
	}

var war = new Game(raiders, targets)
war.initiate();
}