"use strict";

class PitFight {
  constructor (fighter1, fighter2, turns) {
    this.fighter1 = fighter1;
    this.fighter2 = fighter2;
    this.state = {
      currentlyAttacking: fighter1,
      beingAttacked: fighter2
    }
    this.turns = turns;
  }

  initiate () {
    console.log(`The battle has begun between ${this.fighter1.name} and ${this.fighter2.name}`)
    this.battle();
  }

  fighterAboutToDie () {
    return (this.fighter1.health <= (this.fighter2.strength + 1))
     || (this.fighter2.health <= (this.fighter1.strength + 1));
  }

  battle () {
    for (var i = 1; i <= this.turns; i++){
      var attackingFighter = this.state.currentlyAttacking;
      var beingAttacked = this.state.beingAttacked;

      if(!this.fighterAboutToDie()){
        attackingFighter.attack(beingAttacked)
        // Switch the two vikings
        this.state.currentlyAttacking = beingAttacked;
        this.state.beingAttacked = attackingFighter;
        // Print Board
        this.printStatus();
      } else {
        console.log("The match has ended");
        return;
      }
    }


}

  printStatus () {
    var attacking = this.state.currentlyAttacking;
    var defending = this.state.beingAttacked;
    console.log("\n--------------------------------");
    console.log(`${attacking.name} is next up with ${attacking.health} health`)
    console.log(`${defending.name} is defending and has ${defending.health} health\n`)

  }
}

module.exports = PitFight;