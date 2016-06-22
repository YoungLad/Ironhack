var user = {}
var responses = []
function qname(){
	var name = prompt('What is your name?')
	user.name = name
}

function truefalse(){
	var best
	var answ = prompt('Are you the best?')

	if (answ.toLowerCase() === "yes"){
		best = true;
	} else if (answ.toLowerCase() === "no"){
		best = false;
	} else {
		alert("Please answer either Yes or No");
    	return truefalse();
	}
	responses.push(best);
}

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or Mocha?');
  js = js.toLowerCase();
  var jss
  switch (js) {
    case 'java':
    jss = false;
    break;

    case 'liveScript':
    jss = false;
    break;

    case 'javaLive':
    jss = false;
    break;

    case 'mocha':
    jss = true;
    break;
	}
	responses.push(jss);
}

function numb(){
	var ranNumb = Math.floor((Math.random() * 10) + 1);

	var qest4 = prompt('What number is this '+ ranNumb + '.')

	if (qest4 = ranNumb){
		qest4 = true;
	}
	else{
		qest4 = false;
	}
	responses.push(qest4);

}

function evaluate(responsesArray) {
// declare two variables to store the totals
	var totalF = 0
	var totalT = 0
// populate the “totals” variables from the “responsesArray”
	for (var i = 0; i < responsesArray.length; i++){
		if (responsesArray[i] = true){
			totalT += 1;
		}
		else if(responsesArray[i] = false){
			totalF += 1;
		}
		else{
			totalF += 1;
		}
	}
// save the “totals” variables inside the user object
	user.totalf = totalF
	user.totalt = totalT
// call showResults
	showResults();
}

function showResults() {
// display the user results
	alert(user.name + ' gave ' + user.totalf + ' incorrect answers and ' + user.totalt + ' correct answers');
}

// call the function, passing it the responses array
qname();
truefalse();
question3();
numb();
evaluate(responses);