'use strict'
class Quiz{
	constructor(game){
		this.game = [];
	}


	addQuestion(question){
		this.game.push(question)
	}

	ask(){

	// 	options = {
 //    prompt: this.game[1].text
	// }
	// 	// Our options object, the prompt is simply what will appear in the command line when read is called

	// read(question, askQuestion)
	// 	// The prompt itself, passing options, and using our callback function after input

	// function askQuestion (err, ask){
 //    console.log(ask)
	// 	}
	// 	// Outputs whatever the user has entered back to the console
		console.log("This.game")
	}
}

module.exports = Quiz;