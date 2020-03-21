### Demonstrate TLS mutual auth setup

#### Steps
1. Create the root (self signed cert), client (CN=client.com) and server (CN=server.com) certificates
```bash
	make cert
```
1. Build the docker env for running nginx and a sample webapp. This builds the docker compose file.
```bash
	make build
```
1. Bring up the docker compose with the nginx and the sample webapp. This exposes the port 443 on localhost.
```bash
	make run
```
1. Add an entry in /etc/hosts to server.com to resolve to 127.0.0.1
1. Test the client certificate works.
```bash
	make curl
```
