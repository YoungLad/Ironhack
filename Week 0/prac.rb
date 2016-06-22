count = 0 #This is the universal count variable.
# # iter1
# while count < 100
# 	count +=1

# 	if count % 3 == 0
# 		puts "Fizz"
# 	elsif count % 5 == 0
# 		puts "Buzz"
# 	else
# 		puts count
# 	end
		
# end
# # iter 2
# until count == 100 
# 	count += 1

# 	if count % 3 == 0
# 		puts "Fizz"
# 	elsif count % 5 == 0
# 		puts "Buzz"
# 	else
# 		puts count
# 	end
# end

#iter 3 
# until count == 100 
# 	count += 1
# 	nums = count.to_s
	
	
# 	if count % 3 == 0
# 		print "Fizz\n"
# 	end
# 	if count % 5 == 0
# 		print "Buzz"
# 	end
# 	if nums[0] == "1"
# 		puts "Bang"
# 	end

# end



#iter 4
while count < 100
	count +=1
	result = ""
	nums = count.to_s

	if count % 3 == 0
		result << "Fizz"
	end
	if count % 5 == 0
		result << "Buzz"
	end
	if nums[0] == "1"
 		result << "Bang"
	end
	if result == ""
		puts count
	else
		puts result
		

	end
end
