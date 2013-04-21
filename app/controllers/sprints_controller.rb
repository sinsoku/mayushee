class SprintsController < ApplicationController
  before_filter :authenticate_user!

  authorize_resource

  def index
    @project = Project.find(params[:project_id])
  end
end
