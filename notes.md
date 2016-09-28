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
bin/rails generate controller (name of controllers, "example: students, tasks, zombies, posts") + choose what pages you want.
```

```
bin/rails generate controller tasks index show new create edit update delete
```

4. look at routes and begin using http verbs
add this to top if you wanted root page to be
  root to: 'tasks#index'
  
