mysql5.7-up:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox up -d

mysql5.7-down:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox down --rmi all

mysql5.7-status:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox ps

mysql5.7-logs:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox logs -f

mysql5.7-info:
	@echo
	@echo "\tMySQL 5.7 information"
	@echo
	@echo "\tHost: 0.0.0.0"
	@echo "\tPort: 13306"
	@echo "\tRoot password: password"
	@echo "\tPhpMyAdmin: http://0.0.0.0:23306"
	@echo

postgres13.2-up:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox up -d

postgres13.2-down:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox down --rmi all

postgres13.2-status:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox ps

postgres13.2-logs:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox logs -f

postgres13.2-info:
	@echo
	@echo "\tPostgres 13.2 information"
	@echo
	@echo "\tHost: 0.0.0.0"
	@echo "\tPort: 15432"
	@echo "\tDatabase: dev"
	@echo "\tUser: postgres"
	@echo "\tPassword: password"
	@echo "\tPgAdmin host: http://0.0.0.0:25432"
	@echo "\tPgAdmin user: pgadmin4@pgadmin.postgres132.dev.local"
	@echo "\tPgAdmin password: password"
	@echo

redis6.2-up:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox up -d

redis6.2-down:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox down --rmi all

redis6.2-status:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox ps

redis6.2-logs:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox logs -f

redis6.2-info:
	@echo
	@echo "\tRedis 6.2 information"
	@echo
	@echo "\tHost: 0.0.0.0"
	@echo "\tPort: 16379"
	@echo "\tClient: docker exec -it devbox_db.redis62.dev.local_1 redis-cli"
	@echo

mongo4.4-up:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox up -d

mongo4.4-down:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox down --rmi all

mongo4.4-status:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox ps

mongo4.4-logs:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox logs -f

mongo4.4-info:
	@echo
	@echo "\tMongoDB 4.4 information"
	@echo
	@echo "\tHost: 0.0.0.0"
	@echo "\tPort: 37017"
	@echo "\tMongo express: http://0.0.0.0:38081"
	@echo

minio-up:
	docker-compose -f minio/latest/docker-compose.yml -p devbox up -d

minio-down:
	docker-compose -f minio/latest/docker-compose.yml -p devbox down --rmi all

minio-status:
	docker-compose -f minio/latest/docker-compose.yml -p devbox ps

minio-logs:
	docker-compose -f minio/latest/docker-compose.yml -p devbox logs -f

minio-info:
	@echo
	@echo "\tMinio information"
	@echo
	@echo "\tHost api and web: http://0.0.0.0:29000"
	@echo "\tAccess key: AKIAIOSFODNN7EXAMPLE"
	@echo "\tSecret key: wJalrXUtnFEMIK7MDENGbPxRfiCYEXAMPLEKEY"
	@echo
