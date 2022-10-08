#!/bin/bash

docker pull generaltao725/simple-java-maven-app

docker rm -f simple-java-maven-app

docker run -d --name simple-java-maven-app -p 9005:9005 generaltao725/simple-java-maven-app

cd /home/mao/documents/automation-server-notepad/webhook/data

./clean-up.sh >> clean-up.log