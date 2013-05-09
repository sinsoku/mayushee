class TasksController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_story, except: [:show]

  authorize_resource

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = @story.tasks.build(task_params)
    if @task.save
      redirect_to story_path(@story.project, @story)
    else
      render :new
    end
  end

  private

    def set_story
      @story = Story.find(params[:story_id])
    end

    def task_params
      params.require(:task).permit(:name, :description, :original_estimation)
    end
end
