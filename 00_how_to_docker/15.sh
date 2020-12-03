#creates a container called roach warden with phpmyadmin image and it must 
#link to spawning-pool and expose port 80 on localhost 8081
docker run -d --name roach-warden -p 8081:80 --link spawning-pool:db phpmyadmin