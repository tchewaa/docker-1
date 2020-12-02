#inspect overload container to display ipaddress and it must be formatted.
docker inspect -f '{{.NetworkSettings.IPAddress}}' overlord