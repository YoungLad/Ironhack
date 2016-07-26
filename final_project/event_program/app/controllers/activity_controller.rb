class ActivityController < ApplicationController
	def index
		@things = Activity.all
		@places = Location.all

		render 'index'
	end
end
