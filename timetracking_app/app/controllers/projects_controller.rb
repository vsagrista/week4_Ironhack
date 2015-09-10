class ProjectsController < ApplicationController
  def index
    @projects = Project.order("updated_at DESC").limit(10)
  end

  def new
    @project = Project.new
    render :new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project Created Successfully"
      redirect_to project_path(@project.id)
    else
      render :new
    end
  end

  def show
    id = params[:id]
    @project = Project.find(id)
    @entries = @project.entries
  end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to("/projects")
  end

  private
  def project_params
    params.require(:project).permit(:title,:description)
  end

end
