"use strict";

var randomInteger = require("./random-integer.js");

class War {
  constructor (assaulters, victims) {
    this.assaulters = assaulters;
    this.victims = victims;
    this.turns = randomInteger(5, 8);
    this.casualties = {
      vikings: [],
      victims: []
    }
  }

  initiate () {
    for (var i = 1; i <= this.turns; i++){
      var survivors = [];
      var theWar = this;

      this.assaulters.forEach(function (viking) {
        var randomIndex = randomInteger(0, theWar.victims.length - 1)

        var randomVictim = theWar.victims[randomIndex];

        viking.attack(randomVictim);
        randomVictim.attack(viking);

        if (viking.health <= 0){
          theWar.casualties.vikings.push(viking);
        } else {
          survivors.push(viking)
        }

        if (randomVictim.health <= 0){
          theWar.casualties.victims.push(randomVictim);
          theWar.victims.splice(randomIndex, 1);
        }
      })

      theWar.assaulters = survivors;
    }

    this.printCasualtyReport();
  }

  printCasualtyReport () {
    console.log(`The vikings had ${this.casualties.vikings.length - 1} casualties`);
    console.log(`The saxons had ${this.casualties.victims.length - 1} casualties`);
  }
}

module.exports = War;