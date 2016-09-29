Notes.md

1. First thing you must use the command:

```
rails new .
```

2.
Chris also ran. Not sure if this was due to error in uploading and if its going to be necessary every time:

```
bin/bundle install
```

3.
```
$ bin/rails generate controller Welcome index
bin/rails generate controller (name of controllers, "example: students, tasks, zombies, posts") + choose what pages you want.
```

```
bin/rails generate controller tasks index show new create edit update delete
```

4. look at routes and begin using http verbs
add this to top if you wanted root page to be
  root to: 'tasks#index'


---

5. rails generate model


This is original way of doing it... and now I will see if I can do it with added logical.


article
p <%= @params %> </p>


  def create
    @params = params
    @title = params["title"]
    @description = params["description"]
    @completed_at = params["completed_at"]
  end


  def create
    @params = params
    @mytask = Task.new
    @mytask.title = params[:task][:title]
    @mytask.description = params[:task][:description]
    @mytask.completed_at = params[:task][:completed_at]
    @mytask.save
  end
  <!-- <ul>
    <li>Task Id: <%=@mytask[:id]%></li>
    <li>Task Title: <%=@mytask[:title]%></li>
    <li>Task Description: <%=@mytask[:description]%></li>
    <li>Completion Status: <%=@mytask[:completed_at]%></li>
  </ul>
  </article> -->

  <p><%= button_to "Delete Task", {action: "delete", id: @mytask[:id]}, method: delete, data: {confirm: "Are you sure?"}%>
  </p>

Helpful links:

http://masteruby.github.io/weekly-rails/2014/04/04/how-to-create-todo-list-app-in-rails-adding-removing-completing-tasks.html#.V-2BW5MrLMU


https://www.railstutorial.org/book/updating_and_deleting_users

    # redirect_to action: 'show', id: @mytask.id

    @tasks.each do |task|
      number = params[:id].to_i
      if task[:id] == number
        @mytask = task
      end
    end
    if @mytask == nil
      render :file => 'public/404.html',
      :status => :note_found
    end
  end
