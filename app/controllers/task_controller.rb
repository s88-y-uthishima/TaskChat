class TaskController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def task_params
    params.require(:task).permit(:title).merge(user: current_user)
  end
end
