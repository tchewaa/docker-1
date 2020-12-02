#runs a container named overlord with nginx image on port 5000:80
#it must restarts always and detached.
docker run --name overlord -p 5000:80 -d --restart always nginx