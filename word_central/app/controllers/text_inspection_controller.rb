class TextInspectionController < ApplicationController
	def new
		render "new"
	end

	def create
	@text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    words = @text.split(" ")
    @frequency = Hash.new(0)
	words.each { |word| @frequency[word.downcase] += 1 }
 
    render "results"
  end
end