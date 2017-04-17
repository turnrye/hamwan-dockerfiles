These dockerfiles are for docker containers that host HamWAN services. With the exception of quagga, they're expected to be run as services with Docker Swarm.

In order for the Docker Swarm to be accessible from the services anycast IP, each host needs a static IP address entry for that IP, and Quagga needs to be run with something like `docker run --privileged -v ~/hamwan-dockerfiles/quagga/sample_configs:/etc/quagga --net=host hamwan/quagga`.
