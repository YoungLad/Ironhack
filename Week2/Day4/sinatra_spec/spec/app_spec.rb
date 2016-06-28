require_relative '../models/blog.rb'
require_relative 'server.rb'

require 'rspec'
require 'rack/test'

describe 'Server Service' do
	include Rack::Test::Methods

	it " blogs post method returns an array" do
    expect(Myblog.bposts).to eq([1,2,3,4])
  end

	def app
		Sinatra::Application
	end
end