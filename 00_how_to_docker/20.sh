#creates a local swarm which will manage slave containers
docker swarm init --advertise-addr $(docker-machine ip Char)