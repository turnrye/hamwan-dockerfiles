# HamWAN Dockerfiles

To stand up the monitoring stack, run the following command on a docker swarm management node:
```
docker stack deploy --compose-file=stacks/monitoring.yml monitoring
```
