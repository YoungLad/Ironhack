class ConcertsController < ApplicationController
	def index
		@concert_array = Concert.all
		render 'index'
	end

	def new
		@the_concert = Concert.new
		render 'new'
	end

	def create
		@the_concert = Concert.new(concert_params)

		if @the_concert.save
			redirect_to(concerts_path) 
		else
		redirect_to(new_concert_path)
		end
	end

	private

	def concert_params
		params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
	end
end
