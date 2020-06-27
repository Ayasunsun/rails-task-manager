class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :show, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def new
    @task = Task.new
  end

  def edit

  end

  def show

  end

  def update

    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy

    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
