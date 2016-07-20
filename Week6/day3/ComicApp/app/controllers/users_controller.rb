class UsersController < ApplicationController
	before_action :authenticate_user!, only: :show
	def show
		@users = User.find(params[:id])
	end

end
