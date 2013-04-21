class DutiesController < ApplicationController
  before_filter :authenticate_user!

  authorize_resource

  def index
    @project = Project.find params[:project_id]
    @duties = @project.duties.includes(:user, :role)
  end

  def new
    @project = Project.find params[:project_id]
    @users = User.all
    @roles = Role.all
    @duty = Duty.new
  end

  def create
    @project = Project.find params[:project_id]
    @duty = Duty.new(duty_params)
    @duty.project = @project
    if @duty.save
      redirect_to project_duties_url(@project)
    else
      render :new
    end
  end

  private

    def duty_params
      params.require(:duty).permit(:role_id, :user_id)
    end
end
