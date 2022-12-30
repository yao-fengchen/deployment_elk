run: stop
	docker run --privileged=true --name attack attack > result.txt

stop:
	docker rm attack 2>/dev/null || true

build:
	docker build -t attack .

clean:
	docker rmi -f ubuntu:latest
	docker rmi -f attack:latest
