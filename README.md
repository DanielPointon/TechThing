# TechThing
Random Group Project

# Structure
Project is divided into the following parts:
* Backend(Go) - not sure, just wanted to use Golang
* Backend(Ocaml) - provides API
* Frontend(react w/ typescript) - self explanatory
# Running the project
This project has quite a few strange dependencies(`ocaml`), so `Docker` can be used to boot up containers for each of the aspects of the system behind the scenes.

To do this:
* Install `docker` and `docker-compose`. 
* * https://docs.docker.com/get-docker/
* * https://docs.docker.com/compose/install/
* Run `docker-compose up --build`
