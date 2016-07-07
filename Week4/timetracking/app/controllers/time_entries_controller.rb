class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
		render 'index'
	end

	def new
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new
		render 'new'
	end

	def create
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new(entry_params)

		if @my_entry.save
			redirect_to "/project/#{@my_project.id}/time_entries"
		else
			render 'new'
		end
	end

	def edit

		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]
	end

	def update
		@my_project = Project.find_by(id: params[:project_id])
		@my_entry =  @my_project.time_entries.find_by(id: params[:id])

		if @my_entry.update(entry_params)
				redirect_to action: "index", controller: "time_entries",
			project_id: @my_project.id
		else
			render "edit"
		end
	end

	private

	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :dates, :comments)
	end

	def destroy
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.find(params[:id])

		@my_entry.destroy

		redirect_to project_time_entries_path(@my_project)
	end
end
