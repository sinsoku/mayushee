class DutiesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_project

  authorize_resource

  def index
    @duties = @project.duties.includes(:user, :role)
  end

  def new
    @users = User.all
    @roles = Role.all
    @duty = Duty.new
  end

  def create
    if @project.duties.create(duty_params)
      redirect_to project_duties_url(@project)
    else
      render :new
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def duty_params
      params.require(:duty).permit(:role_id, :user_id)
    end
end
