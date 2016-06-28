class Blog
	attr_accessor :bposts
	def initialize
		@bposts = []
		@page_start = 0
		@page_end = 2
	end

	def add_post(post)
		@bposts.push(post)
	end

	def latest_posts
		sortedposts = @bposts.sort_by{|sort| sort.date}.reverse

	end

	def go_next
		@page_start += 3
		@page_end += 3
	end

	def go_prev
		@page_start -= 3
		@page_end -= 3
	end

	def print_current
		current_posts = @bposts[@page_start..@page_end]
	end
end