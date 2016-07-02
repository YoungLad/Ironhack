"use strict";

var Viking = require("./lib/viking.js");
var PitFight = require("./lib/pit.js");
var Saxon = require("./lib/saxons.js");
var War = require("./lib/village.js");

var viking1 = new Viking("Nizar", 200, 30);
var viking2 = new Viking("Josh", 150, 20);

var thisPitFight = new PitFight(viking1, viking2, 10);
thisPitFight.initiate();


console.log("----------------------------");


var vikings = [
  new Viking("Ase", 30, 6),
  new Viking("Dagmar", 100, 10),
  new Viking("Ake", 92, 20),
  new Viking("Birger", 125, 25),
  new Viking("Carr", 73, 3),
  new Viking("Dagfinn", 55, 2),
  new Viking("Elof", 7, 1),
  new Viking("Felman", 213, 30),
  new Viking("Gustav", 200, 3),
]

var saxonTown = [];
var randomInteger = require("./lib/random-integer");

for (var i = 0; i < 100; i++){
  var health = randomInteger(1, 20);
  var strength = randomInteger(1, 20);
  var theSaxon = new Saxon(health, strength);
  saxonTown.push(theSaxon);
}

var war = new War(vikings, saxonTown)
war.initiate();