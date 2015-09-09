class ProjectsController < ApplicationController
	def index 
		@projects = Project.order("updated_at DESC").limit(10)
	end

	def new
		@project = Project.new
		render :new
	end
	def create
	end


	def show
		id = params[:id]
		@project = Project.find(id)
		@entries = @project.entries
	end

end
