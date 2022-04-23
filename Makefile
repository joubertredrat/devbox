.EXPORT_ALL_VARIABLES:

DOCKER_DEFAULT_PLATFORM = linux/amd64

DEVBOX_PROJECT_NAME = devbox

DEVBOX_REDIS62_DB_EXPORT_PORT ?= 16379
DEVBOX_REDIS62_PRA_EXPORT_PORT ?= 16380
DEVBOX_REDIS62_COMMANDER_EXPORT_PORT ?= 16381

DEVBOX_MONGO44_DB_EXPORT_PORT ?= 27017
DEVBOX_MONGO44_EXPRESS_EXPORT_PORT ?= 27018
DEVBOX_MONGO44_DBGATE_EXPORT_PORT ?= 27019
DEVBOX_MONGO44_NOSQLCLIENT_EXPORT_PORT ?= 27020

DEVBOX_MINIO_API_EXPORT_PORT ?= 29000
DEVBOX_MINIO_CONSOLE_EXPORT_PORT ?= 29001
DEVBOX_MINIO_STORAGE_REGION ?= us-east-1
DEVBOX_MINIO_STORAGE_ACCESS_KEY ?= AKIAIOSFODNN7EXAMPLE
DEVBOX_MINIO_STORAGE_SECRET_KEY ?= wJalrXUtnFEMIK7MDENGbPxRfiCYEXAMPLEKEY
DEVBOX_MINIO_CONSOLE_ROOT_USER ?= root
DEVBOX_MINIO_CONSOLE_ROOT_PASSWORD ?= password

DEVBOX_KAFKA61_ZOOKEEPER_EXPORT_PORT ?= 22181
DEVBOX_KAFKA61_KAFROP_EXPORT_PORT ?= 29092
DEVBOX_KAFKA61_KAFKAUI_EXPORT_PORT ?= 29093
DEVBOX_KAFKA61_KOWL_EXPORT_PORT ?= 29094

.PHONY: default
default: help ;

help:
	@echo
	@echo "Devbox: Easily developer environments using docker"
	@echo "Help commands:"
	@echo
	@echo "  make mysql5.7-help			Help about MySQL 5.7 services"
	@echo "  make mariadb10.5-help			Help about MariaDB 10.5 services"
	@echo "  make postgres13.2-help		Help about Postgres 13.2 services"
	@echo "  make redis6.2-help			Help about Redis 6.2 services"
	@echo "  make mongo4.4-help			Help about Mongo 4.4 services"
	@echo "  make kafka6.1-help			Help about Kafka 6.1 services"
	@echo "  make minio-help			Help about MinIO latest services"
	@echo


include mariadb/10.5/Makefile
include mysql/5.7/Makefile
include postgres/13.2/Makefile
include postgres/14.2/Makefile

redis6.2-up:
	docker-compose -f redis/6.2/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d

redis6.2-down:
	docker-compose -f redis/6.2/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down

redis6.2-status:
	docker-compose -f redis/6.2/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

redis6.2-logs:
	docker-compose -f redis/6.2/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

redis6.2-purge:
	docker-compose -f redis/6.2/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down --volumes

redis6.2-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make redis6.2-up		Start Redis 6.2 service and management tools"
	@echo "  make redis6.2-down		Stop Redis 6.2 service and management tools"
	@echo "  make redis6.2-status		Status from running services"
	@echo "  make redis6.2-logs		Logs from running services"
	@echo "  make redis6.2-purge		Delete all Redis 6.2 data"
	@echo "  make redis6.2-info		Information about the services for use"
	@echo "  make redis6.2-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_REDIS62_DB_EXPORT_PORT			Port to expose Redis 6.2 in docker for your environment"
	@echo "  DEVBOX_REDIS62_PRA_EXPORT_PORT		Port to expose phpRedisAdmin in docker for access in your browser"
	@echo "  DEVBOX_REDIS62_COMMANDER_EXPORT_PORT		Port to expose Redis Commander in docker for access in your browser"
	@echo

redis6.2-info:
	@echo
	@echo "Redis 6.2 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_REDIS62_DB_EXPORT_PORT}"
	@echo "  phpRedisAdmin: 	http://0.0.0.0:${DEVBOX_REDIS62_PRA_EXPORT_PORT}"
	@echo "  Redis Commander: 	http://0.0.0.0:${DEVBOX_REDIS62_COMMANDER_EXPORT_PORT}"
	@echo

mongo4.4-up:
	docker-compose -f mongo/4.4/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d

mongo4.4-down:
	docker-compose -f mongo/4.4/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down

mongo4.4-status:
	docker-compose -f mongo/4.4/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

mongo4.4-logs:
	docker-compose -f mongo/4.4/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

mongo4.4-purge:
	docker-compose -f mongo/4.4/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down --volumes

mongo4.4-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mongo4.4-up		Start MongoDB 4.4 service and management tools"
	@echo "  make mongo4.4-down		Stop MongoDB 4.4 service and management tools"
	@echo "  make mongo4.4-status		Status from running services"
	@echo "  make mongo4.4-logs		Logs from running services"
	@echo "  make mongo4.4-purge		Delete all MongoDB 4.4 data"
	@echo "  make mongo4.4-info		Information about the services for use"
	@echo "  make mongo4.4-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MONGO44_DB_EXPORT_PORT			Port to expose MongoDB 4.4 in docker for your environment"
	@echo "  DEVBOX_MONGO44_EXPRESS_EXPORT_PORT		Port to expose Mongo Express in docker for access in your browser"
	@echo "  DEVBOX_MONGO44_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo "  DEVBOX_MONGO44_NOSQLCLIENT_EXPORT_PORT	Port to expose Nosqlclient in docker for access in your browser"
	@echo

mongo4.4-info:
	@echo
	@echo "MongoDB 4.4 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_MONGO44_DB_EXPORT_PORT}"
	@echo "  Mongo Express: 	http://0.0.0.0:${DEVBOX_MONGO44_EXPRESS_EXPORT_PORT}"
	@echo "  DbGate: 		http://0.0.0.0:${DEVBOX_MONGO44_DBGATE_EXPORT_PORT}"
	@echo "  Nosqlclient: 		http://0.0.0.0:${DEVBOX_MONGO44_NOSQLCLIENT_EXPORT_PORT}"
	@echo

minio-up:
	docker-compose -f minio/latest/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d

minio-down:
	docker-compose -f minio/latest/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down

minio-status:
	docker-compose -f minio/latest/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

minio-logs:
	docker-compose -f minio/latest/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

minio-purge:
	docker-compose -f minio/latest/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down --volumes

minio-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make minio-up			Start MinIO latest service and management tools"
	@echo "  make minio-down		Stop MinIO latest service and management tools"
	@echo "  make minio-status		Status from running services"
	@echo "  make minio-logs		Logs from running services"
	@echo "  make minio-purge		Delete all MinIO latest data"
	@echo "  make minio-info		Information about the services for use"
	@echo "  make minio-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MINIO_API_EXPORT_PORT		Port to expose MinIO API latest in docker for your environment"
	@echo "  DEVBOX_MINIO_CONSOLE_EXPORT_PORT	Port to expose MinIO console web latest in docker for your environment"
	@echo "  DEVBOX_MINIO_STORAGE_REGION		Region to configure into MinIO"
	@echo "  DEVBOX_MINIO_STORAGE_ACCESS_KEY	Access key to configure into MinIO"
	@echo "  DEVBOX_MINIO_STORAGE_SECRET_KEY	Secret key to configure into MinIO"
	@echo "  DEVBOX_MINIO_CONSOLE_ROOT_USER	Root user to access console web into MinIO"
	@echo "  DEVBOX_MINIO_CONSOLE_ROOT_PASSWORD	Root password to access console web into MinIO"
	@echo

minio-info:
	@echo
	@echo "MinIO latest information"
	@echo
	@echo "  API: 			http://0.0.0.0:${DEVBOX_MINIO_API_EXPORT_PORT}"
	@echo "  Console web: 		http://0.0.0.0:${DEVBOX_MINIO_CONSOLE_EXPORT_PORT}"
	@echo "  Region: 		${DEVBOX_MINIO_STORAGE_REGION}"
	@echo "  Access key: 		${DEVBOX_MINIO_STORAGE_ACCESS_KEY}"
	@echo "  Secret key: 		${DEVBOX_MINIO_STORAGE_SECRET_KEY}"
	@echo "  Root user: 		${DEVBOX_MINIO_CONSOLE_ROOT_USER}"
	@echo "  Root password:	${DEVBOX_MINIO_CONSOLE_ROOT_PASSWORD}"
	@echo

kafka6.1-up:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d

kafka6.1-down:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down --volumes

kafka6.1-status:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

kafka6.1-logs:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

kafka6.1-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make kafka6.1-up		Start Kafka 6.1 service and management tools"
	@echo "  make kafka6.1-down		Stop Kafka 6.1 service and management tools"
	@echo "  make kafka6.1-status		Status from running services"
	@echo "  make kafka6.1-logs		Logs from running services"
	@echo "  make kafka6.1-info		Information about the services for use"
	@echo "  make kafka6.1-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_KAFKA61_ZOOKEEPER_EXPORT_PORT		Port to expose Zookeeper in docker for your environment"
	@echo "  DEVBOX_KAFKA61_KAFROP_EXPORT_PORT		Port to expose Kafdrop in docker for access in your browser"
	@echo "  DEVBOX_KAFKA61_KAFKAUI_EXPORT_PORT		Port to expose Kafka UI in docker for access in your browser"
	@echo "  DEVBOX_KAFKA61_KOWL_EXPORT_PORT		Port to expose Kafka UI in docker for access in your browser"
	@echo

kafka6.1-info:
	@echo
	@echo "Kafka 6.1 information"
	@echo
	@echo "  Brokers Host: 	0.0.0.0"
	@echo "  Broker 1 Port: 	9092"
	@echo "  Broker 2 Port: 	9093"
	@echo "  Broker 3 Port: 	9094"
	@echo "  Zookeeper Port: 	${DEVBOX_KAFKA61_ZOOKEEPER_EXPORT_PORT}"
	@echo "  Kafdrop: 		http://0.0.0.0:${DEVBOX_KAFKA61_KAFROP_EXPORT_PORT}"
	@echo "  Kafka UI: 		http://0.0.0.0:${DEVBOX_KAFKA61_KAFKAUI_EXPORT_PORT}"
	@echo "  Kowl: 		http://0.0.0.0:${DEVBOX_KAFKA61_KOWL_EXPORT_PORT}"
	@echo
