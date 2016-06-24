require_relative '../models/imdb.rb'

require 'rspec'

describe "Movies class" do
	imdb = Movies.new("transporter")

	it "returns an array of movie titles matching the term variable" do
		expect(imdb.search).to eq([0..9])
	end

end