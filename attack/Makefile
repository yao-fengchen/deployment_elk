run: stop
	docker run --name attack attack > result.txt

stop:
	docker rm attack 2>/dev/null || true

build:
	docker build -t attack .

clean:
	docker rmi -f alpine:latest
	docker rmi -f attack:latest
