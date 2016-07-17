$(document).ready(function(){
	$(".srch-btn").on("click", function (event){
		event.preventDefault();
		searchSpotify();
	});

	$(".btn-play").on("click", function (event){
		event.preventDefault();
		PausePlay();
		$('.js-player').on('timeupdate', printTime);
	});

	$(".author").on("click", function (event){
		event.preventDefault();
		$('.js-modal').modal("show");

	});
});
function searchSpotify(){
var searchTerm = $("#src").val();
	$.ajax({
		url: `https://api.spotify.com/v1/search?type=track&query=${searchTerm}`,
		success: Song,
		error: Erorrs
	});
}


function modalShit(response){
	$(".headclass").text(response.name);
	$(".photo").html(`<img height="100" width="100" src=` + response.images[0].url + `>`);
	$(".genre").text(response.genres);
	$(".followers").text(response.followers.total);
	$(".popularity").text(response.popularity);
	console.log(response.images[0])
}

function Song(response){
	$(".title").text(response.tracks.items[0].name);
	$(".author").text(response.tracks.items[0].artists[0].name);
	$(".cover").html(`<img src=` +response.tracks.items[0].album.images[0].url+`>`);
	$("audio").prop("src", response.tracks.items[0].preview_url);
	$('.btn-play').toggleClass('playing');
	var artistSearch = response.tracks.items[0].artists[0].href;

	$.ajax({
		url: artistSearch,
		success: modalShit,
		error: Erorrs
	});
}


function Erorrs(){
	console.log("you done goofed kid");
}

var check = 1;
function PausePlay(){
	if (check == 1) {
	$('.js-player').trigger('play');
	$('.btn-play').toggleClass('playing');
	check = 0;
	}
	else if(check == 0) {
		$('.js-player').trigger('pause');
	$('.btn-play').toggleClass('playing');
	check = 1;
	}
}

// Define a function to print the player's current time
function printTime () {
  var current = $('.js-player').prop('currentTime');
  $("#seek").prop("value", current)
  console.debug('Current time: ' + current);
}