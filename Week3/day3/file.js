// var colorsArray = ["indigo", "black", "purple", "indigo", "chartreuse", "indigo", "indigo", "magenta", "chartreuse", "scarlet"];

// function countColors(color, the_array){
// 	var counter;
// 	var colorOccurances = 0;

// 	for (counter = 0; counter < the_array.length; counter++) {
// 		var colorFromArray = the_array[counter];

// 		if (colorFromArray ===color) {
// 			colorOccurances += 1;
// 		}

// 	}
// 	return colorOccurances;
// }



// console.log( countColors("indigo", colorsArray)===4);
// console.log( countColors("chartreuse", colorsArray)===2);
// console.log( countColors("black", colorsArray)===1);
// console.log( countColors("pink", colorsArray)===0);

var numbers = '80:70:90:100';

function averageColon(number){

	if (number === undefined) {
		return 0
			}
		else{
	var numberArray = [];
	
	numberArray = number.split(/[^\w\s]/gi);
	var counter;
	var sum = 0;

	

	for (var counter = 0; counter < numberArray.length; counter ++) {
		sum  += parseInt(numberArray[counter])
	}

	var average = sum/counter


	return average;
}
}

console.log( averageColon(numbers) === 85 );
console.log( averageColon("80&70&90&100")===85 );
console.log( averageColon("80&70:90:100") ===85 );
console.log( averageColon() === 0 );
