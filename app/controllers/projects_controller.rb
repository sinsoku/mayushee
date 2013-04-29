class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  authorize_resource

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_url
  end

  private

    def project_params
      params.require(:project).permit(:description, :name)
    end
end
