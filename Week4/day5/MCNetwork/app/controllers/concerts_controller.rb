class ConcertsController < ApplicationController
	def show
		@the_concert = Concert.find_by(params[:id])
		render 'show'
	end

	def index
		@concert_month = Concert.where("date > ? AND date < ?", DateTime.now, DateTime.now.end_of_month)
		@concert_today = Concert.where("date > ? AND date < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
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
