require "sinatra"
require_relative("lib/calculator.rb")

get "/" do 
	erb(:home)
end

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calc = Calculator.new(first, second)
  @result = calc.add
end