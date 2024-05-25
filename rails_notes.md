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
