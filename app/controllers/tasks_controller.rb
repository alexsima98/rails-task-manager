class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.create(task_params)
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
