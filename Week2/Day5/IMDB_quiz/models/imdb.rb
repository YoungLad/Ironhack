require 'imdb'

class Movies
	attr_accessor :term, :question
	def initialize(term)
		@term = term
		@question = question
	end

	def search_poster
		temp_array = []
		results = Imdb::Search.new(@term)
		results.movies[0..15].each do |x|
			if x.poster != nil
			temp_array << x
		end
	end
		return temp_array[0..8]
	end
end