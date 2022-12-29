run:
	docker-compose up -d

stop:
	docker-compose down

build:
	docker pull yaofengchen/sf-collector:1.5
	docker pull yaofengchen/sf-processor:1.5

clean:
	docker rmi -f yaofengchen/sf-collector:1.5
	docker rmi -f yaofengchen/sf-processor:1.5
