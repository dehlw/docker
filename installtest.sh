#!/bin/bash
# install environment
user="dehlw"
dockername="installdock"

echo "Kill old temp docker..."
# docker rm $dockername

echo "Init new docker..."
# docker run -i -t --name $dockername -v /var/docker:/docker ubuntu:14.04 /bin/bash
# docker run -i -t --name $dockername -v /var/docker:/docker ubuntu:14.04 /docker/init.sh

echo "Kill old init image"
# docker rmi $user/test:init

echo "Commit init"
# docker commit -m="auto tint" -a="$user" $dockername $user/test:init
 
