class EntriesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @entry = @project.entries.new
  end
end
