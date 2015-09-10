class EntriesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @entry = @project.entries.new
  end

  def create
    @project = Project.find(params[:project_id])
    @entry = @project.entries.new(entry_params)
    if @entry.save
      flash[:notice] = "Entry Created Successfully"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    redirect_to action: "show", id: entry.project_id, controller: "projects"
  end
  
  def edit
    @entry = Entry.find(params[:id])
    render :edit
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
    redirect_to("/projects")
  end

  private

  def entry_params
    params.require(:entry).permit(:hours, :minutes, :date, :comments)
  end


end
