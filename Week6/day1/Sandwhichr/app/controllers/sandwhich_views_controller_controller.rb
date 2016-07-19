class SandwhichViewsControllerController < ApplicationController
	def index
		@sandwhiches_array = Sandwhich.all
		render "home"
	end

	def show
		@sandwhich = Sandwhich.find params[:id]
		@ingredients_array = Ingredient.all
		render "details"
	end
end
