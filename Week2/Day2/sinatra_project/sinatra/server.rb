require "sinatra"
require "sinatra-contrib"
require "pry"

get "/" do
	"hello, World!"
end

get "/hi" do
	@name = "Jonathan!"
	erb (:hi_page)
end		

get "/about" do
	erb(:about)
end	

get "/recipe" do
	@name = "red velvet cake"
	@ingredients = [
		"eggs",
		"flour",
		"food coloring",
		"cocoa",
		"buttermilk",
		"Sugar",
		"cream cheese",
	]
	erb(:recipe)
end

# user = {
# 	"JonathanR" => {:name => "Jonathan Rodriguez", :email => jojo@gmail.com}
# 	"GabJohnson" => {:name => "Gabriel Johnson", :email => Imajerk@yahoo.com}
# }

get "/user/:username" do
	@name = params[:username]

	if @name == "Jonathan" || @name == "Goonja"
		erb(:game_time)
	else	
		erb(:user_profile)
	end
end	