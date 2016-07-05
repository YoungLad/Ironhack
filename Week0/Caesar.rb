# iter 1
# def solve_cipher(input)
# 	inputarray = input.split("")
# 	outputarray = []
# 	output2 = []
# 	encoded = []

# 	inputarray.each do |x|
# 		outputarray.push(x.ord)
# 	end

# 	outputarray.each do |y|
# 		output2.push(y - 1)	
# 	end

# 	output2.each do |z|
# 		encoded.push(z.chr)
# 	end

# puts encoded.join("")
# end

# solve_cipher("ifmmp")
# # should return "hello"

# iter 2
# def solve_cipher(input, shift)
# 	inputarray = input.split("")
# 	outputarray = []
# 	output2 = []
# 	encoded = []

# 	inputarray.each do |x|
# 		outputarray.push(x.ord)
# 	end

# 	outputarray.each do |y|
# 		if y == 32
# 			output2.push(y)
# 		else
# 		output2.push(y + shift)
# 		end	
# 	end

# 	output2.each do |z|
# 		encoded.push(z.chr)
# 	end

# puts encoded.join("")
# end

# solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
# # should return "hello"

def solve_cipher(input)
	inputarray = input.split("")
	outputarray = []
	output2 = []
	encoded = []
	shift = 3

	inputarray.each do |x|
		outputarray.push(x.ord)
	end

	outputarray.each do |y|
		if y == 32
			output2.push(y)
		else
		output2.push(y + shift)
		end	
	end

	output2.each do |z|
		encoded.push(z.chr)
	end

puts encoded.join("")
end

solve_cipher()
# should return "hello"