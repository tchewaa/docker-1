#creates a container called spawing pool with mysql image
#it must be -d detached, restarts on failure with db settings
docker run -d --name spawning-pool --restart=on-failure -e MYSQL_ROOT_PASSWORD=Kerrigan -e MYSQL_DATABASE=zerglings -v hatchery:/var/lib/mysql mysql