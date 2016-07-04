class AsciisControllerController < ApplicationController
	def new
		render 'asciis'
	end

	def create

			# @text = params[:text_inspection][:user_text]
		 #    @word_count = @text.split(" ").length
		 #    words = @text.split(" ")
		 #    @frequency = Hash.new(0)
			# words.each { |word| @frequency[word.downcase] += 1 }

		@text = params[:asciis][:user_text]
		
		@artii = Artii::Base.new()
    	# @converted_words = @text.Artii::Base

    	render 'asciisresults'
	end
end
