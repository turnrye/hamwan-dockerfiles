These dockerfiles are for docker containers that host HamWAN services. With the exception of quagga, they're expected to be run as services with Docker Swarm.

In order for the Docker Swarm to be accessible from the services anycast IP, each host needs a static IP address entry for that IP, and Quagga needs to be run with something like `docker run --privileged -v ~/hamwan-dockerfiles/quagga/sample_configs:/etc/quagga --net=host hamwan/quagga`.
docker service create --name anycast-quagga \
  --mode global \
  --publish mode=host,target=2601,published=2601 \
  --publish mode=host,target=2602,published=2602 \
  --publish mode=host,target=2603,published=2603 \
  --publish mode=host,target=2604,published=2604 \
  --publish mode=host,target=2605,published=2605 \
  --publish mode=host,target=2606,published=2606 \
   hamwan/quagga
Then run
```
docker stack deploy --compose-file=stacks/monitoring.yml monitoring
```
