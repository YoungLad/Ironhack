require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

require_relative("models/imdb.rb")


get "/" do 
	erb(:home)
end

post "/movie_search" do
	term = params[:category]
	quiz = Movies.new(term)
	@quizzy = quiz.search_poster
	@random_movie = @quizzy.sample
	@check = @random_movie.year
	erb(:result_quiz)
end

# get "/result_quiz" do
# 	erb(:result_quiz)
# end