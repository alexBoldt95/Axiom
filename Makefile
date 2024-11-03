builddb:
	docker build -t axiom-db-node db

# assume containers are not currently running
# keyspace file used to initialize the scylladb from inside the container
startdb:
	docker compose -f db/docker-compose.yml up -d
	echo "sleeping for db init"
	sleep 20
	docker exec axiom-db-node1 cqlsh -f /etc/db/keyspace.cql

killdb:
	docker compose -f db/docker-compose.yml down

fullrefresh: killdb builddb startdb
	