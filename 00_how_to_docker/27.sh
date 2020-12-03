#view the services logs of engineering bay
docker service logs -f $(docker service ps engineering-bay -f "name=engineering-bay.2" -q)