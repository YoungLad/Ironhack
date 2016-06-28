require 'sinatra'
require 'sinatra/reloader'

require_relative("models/posts.rb")
require_relative("models/blog.rb")

Daily = Post.new("Daily news", Time.new(2016, 5, 2), "The stuff that happened today", "Young Lad", "Mad Shit" )
Weekly = Post.new("Weekly Recap", Time.new(2016, 4, 3), "The stuff that happened this week", "Young Lad", "Mad Shit")
Strange = Post.new("Weird stuff", Time.new(2016, 5, 3), "MAybe aliens?!?!", "Young Lad", "Mad Shit")
Death = Sponsored.new("Deadly?", Time.new(2016, 6, 14), "Watch yo back!!!", "Young Lad", "Mad Shit")
Myblog = Blog.new

Myblog.add_post(Daily)
Myblog.add_post(Weekly)
Myblog.add_post(Strange)
Myblog.add_post(Death)

get "/home" do
	@blog = Myblog.bposts
	erb(:home)
end

get "/post_details/:index" do
	blog = Myblog.bposts
	index = params[:index].to_i
	@curr = blog[index]
	erb(:post_details)
end

get "/new_post" do
	erb(:new_post)
end

post "/create_post" do
	title = params[:title]
	date = Time.now
	text = params[:text]
	author = params[:author]
	category = params[:category]
	n_post = Post.new(title, date, text, author, category)
	Myblog.add_post(n_post)
	redirect "/home"
end


# input = nil
# while input != "exit"
# 	puts "\nTypes [next] to see the next page"
# 	input = gets.chomp

# 	if input == "next"
# 		Myblog.go_next
# 	elsif input == "prev"
# 		Myblog.go_prev
# 	else
# 		Myblog.print_current
# 	end
# end