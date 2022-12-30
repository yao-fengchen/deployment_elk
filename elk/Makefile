run:
	cd docker-elk && docker-compose up -d
	@./wait_for_es.sh
	@curl -s -k -ssl -XPUT http://localhost:9200/sysflow-alerts -H 'Content-Type: application/json' -d @ecs_mapping.json > /dev/null && echo "Created index 'sysflow-alerts'"
	@curl -s -k -ssl -XPUT http://localhost:9200/sysflow-alerts/_settings -H 'Content-Type: application/json' -d '{ "index" : { "number_of_replicas" : 0}}' > /dev/null
	@curl -s -k -ssl -XPUT http://localhost:9200/sysflow-events -H 'Content-Type: application/json' -d @ecs_mapping.json > /dev/null && echo "Created index 'sysflow-events'"
	@curl -s -k -ssl -XPUT http://localhost:9200/sysflow-events/_settings -H 'Content-Type: application/json' -d '{ "index" : { "number_of_replicas" : 0}}' > /dev/null
	sleep 5
	@curl -XPOST http://localhost:5601/api/saved_objects/index-pattern -H 'Content-Type: application/json' -H 'kbn-version: 7.17.5' -d '{"attributes":{"title":"sysflow-alerts","timeFieldName":"event.start", "fieldFormatMap":"{\"event.start\":{\"id\":\"date_nanos\"}}"}}'
	@curl -XPOST http://localhost:5601/api/saved_objects/index-pattern -H 'Content-Type: application/json' -H 'kbn-version: 7.17.5' -d '{"attributes":{"title":"sysflow-events","timeFieldName":"event.start", "fieldFormatMap":"{\"event.start\":{\"id\":\"date_nanos\"}}"}}'

stop:
	cd docker-elk && docker-compose down

build:
	# -git clone https://github.com/deviantony/docker-elk.git
	# cd docker-elk && git checkout tls
	cd docker-elk && mv elasticsearch/config/elasticsearch.yml elasticsearch/config/elasticsearch.yml.orig && cp -p ../elasticsearch.yml elasticsearch/config/elasticsearch.yml
	cd docker-elk && mv kibana/config/kibana.yml kibana/config/kibana.yml.orig && cp -p ../kibana.yml kibana/config/kibana.yml
	cd docker-elk && mv docker-compose.yml docker-compose.yml.orig && cp -p ../docker-compose.yml docker-compose.yml
	cd docker-elk && mv .env .env.orig && cp -p ../.env .env

clean:
	docker rmi -f docker-elk_kibana:latest
	docker rmi -f docker-elk_elasticsearch:latest
