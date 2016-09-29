class TasksController < ApplicationController
  def index
    @tasks = TasksController.alltasks
    # @Task.all
  end

  def show
    @tasks = TasksController.alltasks
    @mytask = nil

    @tasks.each do |task|
      number = params[:id].to_i
      if task[:id] == number
        @mytask = task
      end
    end
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
    @title = params["title"]
    @description = params["description"]
    @completed_at = params["completed_at"]
  end

  def edit
  end

  def update

  end

  def delete
  end

  def self.alltasks
    [
      {id:1, title:"clean", description: "clean fridge", completed_at: true},
      {id:2, title: "tidy", description:"shoe closet", completed_at: false},
      {id:3, title: "feed", description:"feed the dog", completed_at: nil}
    ]
  end

end
