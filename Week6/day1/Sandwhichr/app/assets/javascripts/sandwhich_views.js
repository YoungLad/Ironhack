$(document).ready(function(event){

	var sandID = $('.ingredients_list').data("sand-id")
	$('.btn').on("click", function(event){
		var ingID =  $(event.currentTarget).data("ing-id");
		console.log(ingID);
	
		fetchingredients(ingID, sandID);
	})
});

function fetchingredients(ingID, sandID){
	console.log(ingID);
	console.log(sandID);

	$.ajax({
		type: "POST",
		url: "/api/sandwhiches/" +sandID+ "/ingredients/add",
		data: ingID,
		success: update,
		error: error
});
}

function update(response){
	console.log("dude, yamtown city")
	$(".ingredients_list").append(response.name)

}

function error(err){
	console.log("you glubbed up", err)
}