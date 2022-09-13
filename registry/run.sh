docker run -d \
  -p 5000:5000 \
  --network jenkins \
  --volume /home/mao/images:/var/lib/registry \
  --restart=always \
  --name registry registry:2 
