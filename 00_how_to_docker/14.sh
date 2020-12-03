#created a container lair with a wordpress image and link it to 
#spawning pool and expose port 80 and it must be detached.
docker run -d --name lair -p 8080:80 --link spawning-pool:mysql wordpress