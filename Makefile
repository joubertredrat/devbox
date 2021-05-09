define print_breakline
	@echo
endef

define print_info
	@echo "\t$(1)"
endef

.EXPORT_ALL_VARIABLES:

DEVBOX_PROJECT_NAME = devbox

DEVBOX_MYSQL57_ROOT_PASSWORD = password
DEVBOX_MYSQL57_DB_EXPORT_PORT = 13306
DEVBOX_MYSQL57_PMA_EXPORT_PORT = 13307
DEVBOX_MYSQL57_ADMINER_EXPORT_PORT = 13308
DEVBOX_MYSQL57_DBGATE_EXPORT_PORT = 13309

mysql5.7-up:
	docker-compose -f mysql/5.7/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d

mysql5.7-down:
	docker-compose -f mysql/5.7/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down

mysql5.7-status:
	docker-compose -f mysql/5.7/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

mysql5.7-logs:
	docker-compose -f mysql/5.7/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

mysql5.7-purge:
	docker-compose -f mysql/5.7/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down --rmi all --volumes

mysql5.7-info:

	$(call print_breakline)

	$(call print_info,"MySQL 5.7 information")

	$(call print_breakline)

	$(call print_info,"Host: 0.0.0.0")
	$(call print_info,"Port: ${DEVBOX_MYSQL57_DB_EXPORT_PORT}")
	$(call print_info,"User: root")
	$(call print_info,"Password: ${DEVBOX_MYSQL57_ROOT_PASSWORD}")

	$(call print_info,"PhpMyAdmin: http://0.0.0.0:${DEVBOX_MYSQL57_PMA_EXPORT_PORT}")

	$(call print_info,"Adminer: http://0.0.0.0:${DEVBOX_MYSQL57_ADMINER_EXPORT_PORT}")

	$(call print_info,"DbGate: http://0.0.0.0:${DEVBOX_MYSQL57_DBGATE_EXPORT_PORT}")

	$(call print_breakline)

mariadb10.5-up:
	docker-compose -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d --force-recreate

mariadb10.5-down:
	docker-compose -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down

mariadb10.5-status:
	docker-compose -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

mariadb10.5-logs:
	docker-compose -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

mariadb10.5-info:

	$(call print_breakline)

	$(call print_info,"MariaDB 10.5 information")

	$(call print_breakline)

	$(call print_info,"Host: 0.0.0.0")
	$(call print_info,"Port: 13306")
	$(call print_info,"User: root")
	$(call print_info,"Password: password")

	$(call print_info,"PhpMyAdmin: http://0.0.0.0:23306")

	$(call print_info,"Adminer: http://0.0.0.0:33306")

	$(call print_info,"DbGate: http://0.0.0.0:43306")

	$(call print_breakline)

postgres13.2-up:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox up -d --force-recreate

postgres13.2-down:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox down

postgres13.2-status:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox ps

postgres13.2-logs:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox logs -f

postgres13.2-info:

	$(call print_breakline)

	$(call print_info,"Postgres 13.2 information")

	$(call print_breakline)

	$(call print_info,"Host: 0.0.0.0")
	$(call print_info,"Port: 15432")
	$(call print_info,"Database: dev")
	$(call print_info,"User: postgres")
	$(call print_info,"Password: password")

	$(call print_info,"PgAdmin host: http://0.0.0.0:25432")
	$(call print_info,"PgAdmin user: pgadmin4@pgadmin.postgres132.dev.local")
	$(call print_info,"PgAdmin password: password")

	$(call print_info,"phpPgAdmin host: http://0.0.0.0:35432")

	$(call print_info,"DbGate host: http://0.0.0.0:45432")

	$(call print_breakline)

redis6.2-up:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox up -d --force-recreate

redis6.2-down:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox down

redis6.2-status:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox ps

redis6.2-logs:
	docker-compose -f redis/6.2/docker-compose.yml -p devbox logs -f

redis6.2-info:
	$(call print_breakline)

	$(call print_info,"Redis 6.2 information")

	$(call print_breakline)

	$(call print_info,"Host: 0.0.0.0")
	$(call print_info,"Port: 16379")

	$(call print_info,"phpRedisAdmin host: http://0.0.0.0:26379")

	$(call print_info,"Redis Commander host: http://0.0.0.0:26380")

	$(call print_breakline)

mongo4.4-up:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox up -d --force-recreate

mongo4.4-down:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox down

mongo4.4-status:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox ps

mongo4.4-logs:
	docker-compose -f mongo/4.4/docker-compose.yml -p devbox logs -f

mongo4.4-info:
	$(call print_breakline)

	$(call print_info,"MongoDB 4.4 information")

	$(call print_breakline)

	$(call print_info,"Host: 0.0.0.0")
	$(call print_info,"Port: 37017")

	$(call print_info,"Mongo express: http://0.0.0.0:38081")

	$(call print_info,"DbGate: http://0.0.0.0:48081")

	$(call print_info,"Nosqlclient: http://0.0.0.0:58081")

	$(call print_breakline)

minio-up:
	docker-compose -f minio/latest/docker-compose.yml -p devbox up -d --force-recreate

minio-down:
	docker-compose -f minio/latest/docker-compose.yml -p devbox down

minio-status:
	docker-compose -f minio/latest/docker-compose.yml -p devbox ps

minio-logs:
	docker-compose -f minio/latest/docker-compose.yml -p devbox logs -f

minio-info:
	$(call print_breakline)

	$(call print_info,"MongoDB 4.4 information")

	$(call print_breakline)

	$(call print_info,"Host api and web: http://0.0.0.0:29000")
	$(call print_info,"Access key: AKIAIOSFODNN7EXAMPLE")
	$(call print_info,"Secret key: wJalrXUtnFEMIK7MDENGbPxRfiCYEXAMPLEKEY")

	$(call print_breakline)

kafka6.1-up:
	docker-compose -f kafka/6.1/docker-compose.yml -p devbox up -d --force-recreate

kafka6.1-down:
	docker-compose -f kafka/6.1/docker-compose.yml -p devbox down

kafka6.1-status:
	docker-compose -f kafka/6.1/docker-compose.yml -p devbox ps

kafka6.1-logs:
	docker-compose -f kafka/6.1/docker-compose.yml -p devbox logs -f

kafka6.1-info:
	$(call print_breakline)

	$(call print_info,"Kafka 6.1 information")

	$(call print_breakline)

	$(call print_info,"Brokes Host: 0.0.0.0")
	$(call print_info,"Broke 1 Port: 9092")
	$(call print_info,"Broke 2 Port: 9093")
	$(call print_info,"Broke 3 Port: 9094")

	$(call print_info,"Kafdrop: http://0.0.0.0:29000")

	$(call print_info,"Kafka UI: http://0.0.0.0:28080")

	$(call print_breakline)
