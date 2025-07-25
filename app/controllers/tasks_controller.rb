class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # code
  end

  def set_task
    # code
    @task = Task.find(params[:id])
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to task_path, status: :see_other
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
