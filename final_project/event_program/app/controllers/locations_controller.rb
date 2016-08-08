class LocationsController < ApplicationController
	

	def new
		@new_marker = Location.new
		render 'new'
	end

	def create
		@new_marker = Location.new(location_params)

		if @new_marker.save
			redirect_to activity_path(@new_marker) 
		else
		redirect_to activity_path
		end
	end




	private
	def location_params
		params.require(:location).permit(:name, :lat, :lng, :info)
	end
end
