require_relative("../lib/stringcalc.rb")

RSpec.describe StringCalculator do
	it "returns 0 for empty string" do
		the_calculator = StringCalculator.new
		expect(the_calculator.add("")).to eq(0)
	end


	it "returns the number for a single number" do
		the_calculator = StringCalculator.new
		expect(the_calculator.add("5")).to eq(5)
		expect(the_calculator.add("7")).to eq(7)
	end

	it "returns the numbes added up for two numbers" do
		the_calculator = StringCalculator.new
		expect(the_calculator.add("5,7")).to eq(12)
		expect(the_calculator.add("6,9")).to eq(15)
	end
end
