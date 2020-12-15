class TaskController < ApplicationController
  before_action :set_task, only: [:edit, :update]

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

  def edit
  end
  
  def update
    if @task.update(task_params)
      redirect_to :root
    else
      render :edit
    end
  end

  private
  def task_params
    params.require(:task).permit(:title).merge(user: current_user)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
