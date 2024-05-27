# Rails Notes

Since I'm very new to Ruby on Rails, I am going to us use the lessons from [freeCodeCamp's Ruby on Rails course](https://www.youtube.com/watch?v=fmyvWz5TUWg) as a bootstrapping mechanism. As I find other educational resources I will site them here.


## Notes
In this document I will capture some notes that I find useful.

to get into the environement
```shell
docker compose up
# in a new term...
docker compose exec rails
```

### first controller
(from video lesson "First Webpage and MVC Overview")

```shell
rails g(enerate) controller hello index
```

### manual page creation
to build a webpage, need:
1. html
   - needs to end in `<name>.html.erb`
2. controller
3. route

### what is a partial?
a **partial** is an incomplete chunk of HTML templating that is inserted into larger templates to effect reuse.

keys:
* the filename starts with underscore, ie `app/views/home/_header.html.erb`
* the "outer" template that is using the partial calls `<%= render "home/header" %>` to get the partial template rendered into its output

### first look at linking
use the `link_to` to create a link. eg: `<%= link_to "link text", "path/view" %>`

really should use `rails routes` to identify the "prefix" then use:
```ruby
<%= link_to "link text", <path_from_routes>_path %>
```

### getting started with CRUD
```shell
$ rails g scaffold Item name type description:text
```
this effectively:
- runs `rails g controller Item`
- runs `rails g module Item name description:text type`
- runs `rails g view Item`

NOTE: scaffold builds out some UI automatically

