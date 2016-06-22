class StringCalculator
	def add(number_string)
		numbers = number_string.split(",")

		sum = 0
		numbers.each do |x|
			sum += x.to_i
		end

		return sum
		end
end