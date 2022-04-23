.EXPORT_ALL_VARIABLES:

DOCKER_DEFAULT_PLATFORM = linux/amd64

DEVBOX_PROJECT_NAME = devbox

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
	@echo "  make postgres14.2-help		Help about Postgres 14.2 services"
	@echo "  make redis6.2-help			Help about Redis 6.2 services"
	@echo "  make mongo4.4-help			Help about Mongo 4.4 services"
	@echo "  make kafka6.1-help			Help about Kafka 6.1 services"
	@echo "  make minio-help			Help about MinIO latest services"
	@echo


include mariadb/10.5/Makefile
include minio/latest/Makefile
include mongo/4.4/Makefile
include mysql/5.7/Makefile
include postgres/13.2/Makefile
include postgres/14.2/Makefile
include redis/6.2/Makefile

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
