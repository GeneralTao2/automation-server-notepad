echo $(date)

docker exec jenkins-blueocean /bin/bash -c "docker rmi \$(docker images -q -f dangling=true)" || true

docker rmi $(docker images -q -f dangling=true) || true