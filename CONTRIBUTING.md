# Getting started with with project

This project is a docker native development environment, therefore, currently the only dependency is docker.

to get started:
1. get docker for your platform
1. clone this source
1. create an env file
   - on linux (& mac?) `cp .env.example .env` will likely work out of the box
   - on windows, cp the example as above then update your UID and GID as appropriate. 
1. run `docker compose up`
1. in a separate shell attach to the runing rail image and run the migrations
   1. `docker compose exec rails bash`
   1. `rails db:migrate`
1. test that the application is running by navigating in a browser to [http://localhost:3000](http://localhost:3000)

The above instructions have been tested:
-  Ubuntu 22.04.4 LTS with Docker 24.0.5
-  Windows 11 with Docker ???

