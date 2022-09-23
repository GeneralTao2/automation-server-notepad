#!/bin/bash

registry=$1
name=$2

curl --cacert ~/certs/domain.crt -sSL -I -H "Accept: application/vnd.docker.distribution.manifest.v2+json" "https://${registry}/v2/${name}/manifests/

curl --cacert ~/certs/domain.crt -v -sSL -X DELETE "https://${registry}/v2/${name}/manifests/$(
    curl --cacert ~/certs/domain.crt -sSL -I \
        -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
        "https://${registry}/v2/${name}/manifests/$(
            curl --cacert ~/certs/domain.crt -sSL "https://${registry}/v2/${name}/tags/list" | jq -r '.tags[0]'
        )" \
    | awk '$1 == "docker-content-digest:" { print $2 }' \
    | tr -d $'\r' \
)"
docker exec -it registry bin/registry garbage-collect /etc/docker/registry/config.yml