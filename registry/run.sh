docker run -d \
  --network jenkins \
  --volume /home/mao/images:/var/lib/registry \
  --restart=always \
  --name registry \
  -v /home/mao/certs:/certs \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  -e REGISTRY_STORAGE_DELETE_ENABLED=true \
  -p 443:443 \
  registry:2