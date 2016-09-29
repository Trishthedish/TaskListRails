class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @mytask = Task.find(params[:id])
    if @mytask == nil
      render :file => 'public/404.html',
      :status => :not_found
    end
  end

  def new
    @task = Task.new
  end

  def create
    @params = params
    @mytask = Task.new
    @mytask.title = params[:task][:title]
    @mytask.description = params[:task][:description]
    @mytask.completed_at = params[:task][:completed_at]
    @mytask.save
    redirect_to tasks_path
  end

  def edit
    @tasks = Task.find(params[:id])
    if @mytask == nil
      render :file => 'public/404.html',
      :status => :not_found
    end
  end

  def update

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
    flash[:alert] = "task deleted"
  end


end
