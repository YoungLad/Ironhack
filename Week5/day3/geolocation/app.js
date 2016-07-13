$(document).ready(function (){

	console.log("The document is ready");

	if("geolocation" in navigator){
		console.log("Browser has geolocation!");

		var options = {timeout: 5000}

		navigator.geolocation.getCurrentPosition(showPosition, handleError, options);
	}
	else{
		console.log("Browser doesn't have geolocation. :(" );

		var html = "<h2> Update your browser , bro. </h2><p>Your Browser is older than dirt</";

		$("body").append(html)
	}

	function showPosition(postion){
		console.log("User consented to give location.")
		console.log(postion);

		var lat = postion.coords.latitude;
		var lng = postion.coords.longitude;

		var html =
		`<h2> Your postion </h2> <ul> <li> Latitude: ${lat} </li> <li> Longitude: ${lng} </li> </ul>`;

		$("body").append(html);
	}

	function handleError(error){
		console.log("Error getting postion.");
		console.log(error)

		if (error.code ===1){
			var html = '<h2> Come on! Give me your location. </h2>';
			$("body").append(html);
		}
	}

});