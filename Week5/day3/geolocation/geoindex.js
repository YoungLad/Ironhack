if ("geolocation" in navigator) {

} else {
  alert("Geolocation is not available")
}

function getLocation() {
  console.log('Getting location...');
  navigator.geolocation.getCurrentPosition(onLocation, onError, options);
}

var options = {
  enableHighAccuracy: true 
};

function onLocation (position) {
  // your code here
  console.log("User consented to give location.")
	console.log(position);

		var lat = position.coords.latitude;
		var lng = position.coords.longitude;

		var mapLocation = `<img src="https://maps.googleapis.com/maps/api/staticmap?center=${lat},${lng}&size=640x400&zoom=9">`

		$("body").html(mapLocation);
	}

function onError(error) {
  console.log("Getting location failed: " + error);
}

getLocation();