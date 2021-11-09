class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(restaurant_params_create)
    @task.save
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(restaurant_params_modify)
    redirect_to task_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def restaurant_params_create
    params.require(:task).permit(:title, :details)
  end

  def restaurant_params_modify
    params.require(:task).permit(:title, :details, :completed)
  end

end
