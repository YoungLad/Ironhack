class ProjectsController < ApplicationController

	def index
		@project_array = Project.order(created_at: "desc")
		.limit(10)
		render "index"
	end
end
