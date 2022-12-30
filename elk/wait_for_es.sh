ready() {
    eval "curl -k -ssl -XGET http://localhost:9200/_status" > /dev/null 2> /dev/null
}

echo "Waiting for ElasticSearch "
i=0
while ! ready; do
    i=$(expr $i + 1)
    echo "."
    sleep 3
done

echo 

