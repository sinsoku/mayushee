class StoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_project, only: [:index, :new, :create]

  authorize_resource

  def index
    @stories = @project.stories
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    if @project.stories.create(story_params)
      redirect_to project_stories_url(@project)
    else
      render :new
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def story_params
      params.require(:story).
        permit(:importance, :name, :description, :storypoints)
    end
end
