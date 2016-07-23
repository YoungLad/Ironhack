// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
 PokemonApp.Pokemon= class{

	constructor(pokemonUri){
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render(){
		console.log("Rendering pokemon: #" + this.id);
		$.ajax({
			url: "/api/pokemon/" + this.id,
			success: function (response){
				console.log("Pokemon info:");
				console.log(response);

				
		$.ajax({
			url: "http://pokeapi.co" + response.sprites[0].resource_uri,
			success: function(responses){
				console.log("Pokemon sprites!")
				$(".js-pkmn-sprite").html(`<img src="` + "http://pokeapi.co" + responses.image + `">`)
				
				
			}
		});

			

			var sortedDescriptions = response.descriptions.sort().pop().resource_uri;
		$.ajax({
			url: "http://pokeapi.co" + sortedDescriptions,
			success: function(responses){
				console.log("Pokemon descriptions!")
				$(".js-pkmn-description").html(responses.description)
				
			}
		});



				$(".js-pkmn-name").text(response.name);
				$(".js-pkmn-number").text("#" +response.pkdx_id);
				$(".js-pkmn-height").text(response.height);
				$(".js-pkmn-weight").text(response.weight);
				$(".js-pkmn-atk").text(response.attack);
				$(".js-pkmn-def").text(response.defense);
				$(".js-pkmn-satk").text(response.sp_atk);
				$(".js-pkmn-sdef").text(response.sp_def);
				$(".js-pkmn-health").text(response.hp);
				$(".js-pkmn-spd").text(response.speed);

				if (response.types.length > 1) {
				$(".js-pkmn-type").text(response.types[0].name + "/" + response.types[1].name);	
				}
				else{
					$(".js-pkmn-type").text(response.types[0].name);

				}
				console.log("Pokemon name: " + response.name);
				console.log("Pokemon number: " + response.pkdx_id);
				console.log("Pokemon height: " + response.height);
				console.log("Pokemon weight: " + response.weight);
				$(".js-pokemon-modal").modal("show")
			
			}
		});
	};
}

PokemonApp.idFromUri = function(pokemonUri){
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}

$(document).on("ready", function (){

	$(".js-show-pokemon").on("click", function (event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});