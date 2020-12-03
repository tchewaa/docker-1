#removes all containers by id recursively
docker container rm -f $(docker container ls -a -q)