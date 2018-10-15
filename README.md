# Sharedcloud-tunnel-server

This repository represents the server side of the tunnel in charge of creating the connections with the instances

### Use

The following ENV vars need to be passed when creating the Docker container:

* `HTTP_SERVICE_PORT`: Describes the port in which the user needs to connect to access the tunnel
* `TCP_PORT`: Describes the port in which the instance needs to connect to transmit through the tunnel

Also, please don't forget to expose the required ports with the `-p` option.

For example:
```
docker run --rm --name sharedcloud-tunnel-server -e HTTP_SERVICE_PORT=8080 \
                                                 -e TCP_PORT=7000 \
                                                 -e AUTHENTICATION_TIMEOUT=900 \
                                                 -e TOKEN=1234554321 \  # Optional
                                                 -p 8080:8080 \
                                                 -p 7000:7000 \
                                                 sharedcloud-tunnel-server
```
