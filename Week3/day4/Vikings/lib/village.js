"use strict";

var randomInteger = require("./random-integer.js");

class War {
  constructor (assaulters, victims) {
    this.assaulters = assaulters;
    this.victims = victims;
    this.turns = randomInteger(5, 8);
    this.casualties = {
      fighters: [],
      victims: []
    }
  }

  initiate () {
    for (var i = 1; i <= this.turns; i++){
      var survivors = [];
      var theWar = this;

      this.assaulters.forEach(function (fighter) {
        var randomIndex = randomInteger(0, theWar.victims.length - 1)

        var randomVictim = theWar.victims[randomIndex];

        fighter.attack(randomVictim);
        randomVictim.attack(fighter);

        if (fighter.health <= 0){
          theWar.casualties.fighters.push(fighter);
        } else {
          survivors.push(fighter)
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
    console.log(`The fighters had ${this.casualties.fighters.length - 1} casualties`);
    console.log(`The saxons had ${this.casualties.victims.length - 1} casualties`);
  }
}

module.exports = War;