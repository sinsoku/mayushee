class SprintsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_project

  authorize_resource

  def index
    @sprints = @project.sprints
  end

  def new
    @sprint = Sprint.new
  end

  def create
    if @project.sprints.create(sprint_params)
      redirect_to project_sprints_url(@project)
    else
      render :new
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def sprint_params
      params.require(:sprint).
        permit(:start_on, :finish_on,
               :number_of_workdays, :estimated_focus_factor)
    end
end
