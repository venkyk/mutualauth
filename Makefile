cert:
	mkdir -p ./certs
	docker build -f Dockerfile.certs -t certs .
	docker run --rm -v ${PWD}/certs:/data -it certs cp -r /certs/ /data

build:
	docker-compose build

run:
	docker-compose up -d

clean:
	rm -rf ${PWD}/certs/*
	docker-compose down

fail:
	curl -v \
		--cacert ./certs/certs/ca/ca.crt \
		https://server.com/admin

curl:
	curl -v \
		--cacert ./certs/certs/ca/ca.crt \
		--key ./certs/certs/client/private/client.com.key \
		--cert ./certs/certs/client/client.com.crt \
		https://server.com/admin

logs:
	docker-compose logs
