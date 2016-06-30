var fs = require("fs");

fs.readFile("movies.txt", "utf8", function(theError, fileContents){
	console.log("\nFile has been read! Printing it's contents:");

	console.log(fileContents)
})