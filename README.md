# docker-chefdk

A docker container that contains chefdk

Used to push cookbooks,roles,environments to a chef server

Based off of spheromak/docker_chefdk


## Building

```bash
# docker-machine start
# eval $(docker-machine env)
docker build -t <yourname>/chefdk .
```

Upload to docker hub
```bash
docker login
docker tag  <yourname>/chefdk:$(date +%Y%m%d) <yourname>/chefdk:latest
dccker push <yourname>/chefdk:$(date +%Y%m%d)
docker push <yourname>/chefdk:latest
```
