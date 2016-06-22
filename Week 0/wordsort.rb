def wordsorter(sentence)

wordprep = sentence.downcase.gsub(/[^a-z0-9\s]/i, '')
wordarray = wordprep.split(" ")
sorted = wordarray.sort

puts sorted
end

wordsorter("Have a nice day!")
wordsorter("Fools fall for foolish follies.")