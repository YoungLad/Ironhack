"use strict";

var Viking = require("./lib/viking.js");
var Ninja = require("./lib/ninja.js");
var Mage = require("./lib/mage.js");
var PitFight = require("./lib/pit.js");
var Saxon = require("./lib/saxons.js");
var War = require("./lib/village.js");

// var viking1 = new Ninja("Nizar", 200, 30, true);
// var viking2 = new Mage("Lad", 200, 25, 3);

// var thisPitFight = new PitFight(viking1, viking2, 10);
// thisPitFight.initiate();


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
  new Ninja("Gustav", 200, 3, true),
  new Mage("88888888888", 200, 16, 32)
    ]

var saxonTown = [];
var randomInteger = require("./lib/random-integer");

for (var i = 0; i < 100; i++){
  // if (i < 10) {
  //   var health = randomInteger(1, 550);
  //   var strength = randomInteger(1, 5550);
  //   var theSaxon = new Saxon(health, strength);
  //   saxonTown.push(theSaxon);
  //   }
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

var war = new War(vikings, saxonTown)
war.initiate();