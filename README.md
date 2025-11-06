# containers
This is my standard deployment of containers for development and local testing. 

## One time setup
1. run `docker-create-net` to create docker26 subnet
2. cp other scripts/docker-* into $HOME/bin
3. put the HAProxy server cert in ~/work/etc/dev-server-cert.pem
4. add `172.26.0.2 haproxy.cadc.dao.nrc.ca` to /etc/hosts

The haproxy server name also appears in:
* infra/reg/config/reg-resource-caps.properties (for local services)
* in *all* config/catalina.proprties `tomcat.connector.proxyName` value

## Databases used by services
Currently, any PostgreSQL database containers used by services are local incus containers 
that are already running. The IP is found by listing incus containers and adding a host
mapping to the service container.

TODO: abstract finding IP of local database, maybe:
- incus list {dbserver} | ...
- docker inspect {dbserver} | ...
- grep {dbserver} /etc/hosts | ...


## To start things:
1. start haproxy container (./doit)
2. start `reg` (./doit or ./doit -f), uses `docker-static-ip` to get their IP from the haproxy instance
3. start other containers...

To check:
`curl -s https://haproxy.cadc.dao.nrc.ca/reg/resource-caps` should work and output key=value pairs

