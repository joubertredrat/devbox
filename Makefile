.EXPORT_ALL_VARIABLES:

DEVBOX_ENGINE ?= ""
DEVBOX_PROJECT_PREFIX = devbox

.PHONY: default
default: help ;

compose-cmd:
DEVBOX_COMPOSE_CMD = docker compose
ifeq ($(strip $(DEVBOX_ENGINE)),docker)
DEVBOX_COMPOSE_CMD = docker compose
endif
ifeq ($(strip $(DEVBOX_ENGINE)),podman)
DEVBOX_COMPOSE_CMD = podman-compose
endif

help:
	@echo
	@echo "Devbox: Easily developer environments using docker"
	@echo "Help commands:"
	@echo
	@echo "  make beanstalkd1.12-help		Help about Beanstalkd 1.12 services"
	@echo "  make kafka6.1-help			Help about Kafka 6.1 services"
	@echo "  make mariadb10.5-help			Help about MariaDB 10.5 services"
	@echo "  make mariadb10.6-help			Help about MariaDB 10.6 services"
	@echo "  make mariadb11.0-help			Help about MariaDB 11.0 services"
	@echo "  make memcached1.6-help		Help about Memcached 1.6 services"
	@echo "  make minio-help			Help about MinIO latest services"
	@echo "  make mongo4.4-help			Help about Mongo 4.4 services"
	@echo "  make mongo5.0-help			Help about Mongo 5.0 services"
	@echo "  make mongo6.0-help			Help about Mongo 6.0 services"
	@echo "  make mongo7.0-help			Help about Mongo 7.0 services"
	@echo "  make mysql5.7-help			Help about MySQL 5.7 services"
	@echo "  make mysql8.0-help			Help about MySQL 8.0 services"
	@echo "  make postgres13.2-help		Help about Postgres 13.2 services"
	@echo "  make postgres14.2-help		Help about Postgres 14.2 services"
	@echo "  make postgres15.3-help		Help about Postgres 15.3 services"
	@echo "  make rabbitmq3.10-help		Help about RabbitMQ 3.10 services"
	@echo "  make redis6.2-help			Help about Redis 6.2 services"
	@echo "  make redis7.0-help			Help about Redis 7.0 services"
	@echo "  make redis7.2-help			Help about Redis 7.2 services"
	@echo

include beanstalkd/1.12/Makefile
include kafka/6.1/Makefile
include keycloak/24.0/Makefile
include mariadb/10.5/Makefile
include mariadb/10.6/Makefile
include mariadb/11.0/Makefile
include memcached/1.6/Makefile
include minio/latest/Makefile
include mongo/4.4/Makefile
include mongo/5.0/Makefile
include mongo/6.0/Makefile
include mongo/7.0/Makefile
include mysql/5.7/Makefile
include mysql/8.0/Makefile
include postgres/13.2/Makefile
include postgres/14.2/Makefile
include postgres/15.3/Makefile
include rabbitmq/3.10/Makefile
include redis/6.2/Makefile
include redis/7.0/Makefile
include redis/7.2/Makefile
include zipkin/3.1/Makefile
