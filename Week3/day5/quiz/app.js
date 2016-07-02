var read = require('read');

var question =require("./question.js")
var quiz =require('./quiz.js')

var question1 = new question("Are fish real?", "Y", 1)
var question2 = new question("Are birds real?", "Y", 2)
var question3 = new question("Are you real?", "N", 3)
var firstQuiz = new quiz()

firstQuiz.addQuestion(question1)
firstQuiz.addQuestion(question2)
firstQuiz.addQuestion(question3)

firstQuiz.ask