class Post
	attr_accessor(:date, :title, :text, :author, :category)
	def initialize(title, date, text, author, category)
		@title = title
		@date = date
		@text = text
		@author = author
		@category = category
	end
	# def print
	# 	puts @title
	# 	puts "***************"
	# 	puts @text
	# 	puts "---------------"
	# end
end

class Sponsored < Post
	attr_accessor(:date, :title, :text, :author, :category)
	def initialize(title, date, text, author, category)
		@title = title
		@date = date
		@text = text
	end
end