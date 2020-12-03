#removes all services by id recursively
docker service rm $(docker service ls -q)