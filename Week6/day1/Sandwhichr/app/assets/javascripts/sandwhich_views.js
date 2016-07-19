$(document).ready(function(event){

	var sandID = $('.ingredients_list').data("sandID")
	$('.btn').on("click", function(event){
		var ingID =  $(event.currentTarget).data("ingID");
	
		fetchingredients();
	})
});

function fetchingredients(event){
	$.ajax({
		type: "POST",
		url: `/api/sandwiches/${sandID}/ingredients/add`,
		data: ingID
		success: addIngredient,
		error: error
});
}


function addIngredient(){
	
	
}

function error(){
	console.log("you glubed up")
}