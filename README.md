# docker-compose

Compose command-line reference
https://docs.docker.com/compose/reference/

docker-compose up -d
Builds, (re)creates, starts, and attaches to containers for a service.

docker-compose ps
Lists containers.

docker-compose logs
Displays log output from services.

docker-compose exec SERVICE /bin/bash
This is the equivalent of docker exec.
With this subcommand you can run arbitrary commands in your services.
Commands are by default allocating a TTY, so you can use a command such as docker-compose exec web sh to get an interactive prompt.

docker-compose down
Stops containers and removes containers, networks, volumes, and images created by up.
