run: stop
	@docker run --privileged=true --name attack attack > result.txt
	/bin/sh createSpecialContainer.sh

stop:
	docker rm attack 2>/dev/null || true

build:
	# docker buildx build -f Dockerfile.base --platform linux/amd64 -t yaofengchen/ubuntu:1.0 .
	docker build -f Dockerfile -t attack .

clean:
	docker rmi -f ubuntu:latest
	docker rmi -f attack:latest