class TasksController < ApplicationController
  def index
    @tasks = TasksController.alltasks
    # @Task.all
  end

  def show
    @tasks = TasksController.alltasks
    @mytask = nil

    @tasks.each do |task|
      @number = params[:id].to_i
      if task[:id] == @number
        @mytask = task
      end
    end
    if @mytask == nil
      render :file => 'public/404.html',
      :status => :not_found
    end
  end

  def new
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
      {id:1, name:"clean", description: "clean fridge", completion_status: false, completed_at: nil},
      {id:2, name: "tidy", description:"shoe closet", completed_at: nil},
      {id:3, name: "feed", description:"feed the dog", completed_at: nil}
    ]
  end 

end
