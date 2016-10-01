Notes.md

WAVE 2
In this wave we will add the first set of user interactivity and persistence.
Be able to create a new task: [x]
1. The home page should contain a link to Add a new task. This will give the user a form to fill out with the appropriate task fields [x]
2. After the new task is added, the site should take the user back to the home page which displays the full list of tasks. The new task that was just added should be included in the full list of tasks.[x]
4. Be able to delete an existing task:
Add a route and controller action whose responsibility is deleting a task (RESTful routes)[x]
5. On the home page, add a button or link for each task that will, once clicked...[x]

*** 6. Ask the user to confirm that they definitely want to delete the task.[] ***

7. Delete the task from the database and redirect the user back to the list of remaining tasks.[X]



WAVE 3
In this wave we will extend the interactivity with users, allowing them to edit existing tasks in a couple of different ways. As always, follow RESTful conventions when implementing these features.

1. Add the ability for the user to mark a task complete [ ]

2. Add a button to the list of tasks on the home page that, when clicked, will mark a task complete.[ ]

3. Update the database with the task's completed date
Add the ability for the user to edit a task's details.[ ]

4. Add an edit action that renders a form allowing the user to update all the fields of a task. [X]

5. Submitting the form from the edit action should update the existing task; not create a new one.[X]

Research: ActiveRecord's update method.
Link to the edit action from the task's show page.
Optional: DRY up your code by reusing the view code from the new functionality
Hint: Rendering partials in Rails.


Mapping a Path to using Rails!

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





Helpful links:
https://medium.freecodecamp.com/model-view-controller-mvc-explained-through-ordering-drinks-at-the-bar-efcba6255053#.d6lfhouyw

http://rails-4-0.railstutorial.org/book/updating_and_deleting_users

http://masteruby.github.io/weekly-rails/2014/04/04/how-to-create-todo-list-app-in-rails-adding-removing-completing-tasks.html#.V-2BW5MrLMU


https://www.railstutorial.org/book/updating_and_deleting_user
