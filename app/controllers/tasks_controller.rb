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
    if @tasks == nil
      render :file => 'public/404.html',
      :status => :not_found
    end
  end

# this method was created && may not work.
  def update
    @mytask = Task.find(params[:id])
    if @mytask.update({title: params[:task][:title], description: params[:task][:description], completed_at: params[:task][:completed_at]})
      # redirect_to(@mytask)}
      redirect_to tasks_path
    else
      render "edit"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
    flash[:alert] = "task deleted"
  end


end
