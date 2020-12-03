#creates a service container named engineering bay on overmind network
#it must have 2 replicas
docker service create -d --name engineering-bay --network overmind --replicas 2 -e OC_USERNAME=root -e OC_PASSWD=root 42school/engineering-bay