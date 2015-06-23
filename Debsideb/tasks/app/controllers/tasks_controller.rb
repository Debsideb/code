class TasksController < ApplicationController

 before_filter :set_task, only: [:show, :edit, :update]

  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    Task.create(task_params)
    redirect_to :back
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path(@task)
  end

protected

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
  params.require(:task).permit(:task)
  end
end
