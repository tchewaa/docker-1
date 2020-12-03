#removes all images in Char recusively by id
docker image rm -f $(docker image ls -a -q)