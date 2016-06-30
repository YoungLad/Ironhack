var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);

   episodes = episodes.sort(function(a, b){

   	return a.episode_number-b.episode_number
   });




  
   function sortByRating(element_in_array){
   	if (element_in_array.rating > 8.5 ){
   		return true;
   	}
   	else {
   		
   		return false;
   	}
   }
episodes = episodes.filter(sortByRating);



episodes.forEach(function(episode){
var sum="";

for(var x=0;x < Math.round(episode.rating); x++){
	sum+="*";
}
	

    console.log("Title:" + episode.title + " Episode #:" +
    	episode.episode_number + "\n" + 
    	episode.description + "\n" + 
    	"Rating: " + episode.rating + " " + sum)
});


}

 fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);
