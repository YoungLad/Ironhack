class ActivitiesController < ApplicationController
	def index
		render 'index'
	end

	def show

	end

	def new
		@new_thing = Activity.new
		render 'new'
	end

	def create
		@new_thing = Activity.new(activity_params)

		if @new_thing.save
			redirect_to activity_path(@new_thing) 
		else
		redirect_to new_activity_path
		end
	end

	private
	def activity_params
		params.require(:activity).permit(:title, :location, :price)
	end
end
