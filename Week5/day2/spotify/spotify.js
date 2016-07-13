$(document).ready(function (){
$('#searchForm').on("submit",fetchArtists)


function fetchArtists(event){
	event.preventDefault();
	var form = $("#artistSearch").val()
	$.ajax({
    type: "GET",
    url: `https:api.spotify.com/v1/search?type=artist&query=${form}`,
  success: displayArtists,
  error: searchError
		});
}

function displayArtists(searchTerm){
	console.log(searchTerm.artists.items[0].images[0].url)
	var artistArray = searchTerm;

	artistArray.artists.items.forEach(function (artist){
		$('#display').append(`<h1>` + artist.name + '</h1>')
		if (artist.images.length > 0){
		$('#display').append(`<img height="200" width="250" src="${artist.images[0].url}"" >`)
	}
	else{
		$('#display').append('ugggghhttht')
	}
	});
		
}

function searchError(){
	console.log("You done goofed...try again")
}

});