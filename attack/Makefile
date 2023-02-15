run: stop
	@docker run --privileged=true --name attack attack > result.txt
	@docker run --privileged=true --name attackanalyze attackanalyze > result.txt
	/bin/sh createSpecialContainer.sh

stop:
	docker rm attack 2>/dev/null || true

build:
	docker build -f Dockerfile -t attack .
	docker build -f Dockerfile.analyze -t attackanalyze .

clean:
	docker rmi -f ubuntu:latest
	docker rmi -f attack:latest