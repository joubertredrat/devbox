DEVBOX_MONGO50_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}vga

DEVBOX_MONGO50_DB_EXPORT_PORT ?= 28017
DEVBOX_MONGO50_DB_USER ?= root
DEVBOX_MONGO50_DB_PASSWORD ?= password
DEVBOX_MONGO50_EXPRESS_EXPORT_PORT ?= 28018
DEVBOX_MONGO50_DBGATE_EXPORT_PORT ?= 28019
DEVBOX_MONGO50_NOSQLCLIENT_EXPORT_PORT ?= 28020

mongo5.0-up:
	${DOCKER_COMPOSE_CMD} -f mongo/5.0/docker-compose.yml -p ${DEVBOX_MONGO50_PROJECT_NAME} up -d

mongo5.0-down:
	${DOCKER_COMPOSE_CMD} -f mongo/5.0/docker-compose.yml -p ${DEVBOX_MONGO50_PROJECT_NAME} down

mongo5.0-status:
	${DOCKER_COMPOSE_CMD} -f mongo/5.0/docker-compose.yml -p ${DEVBOX_MONGO50_PROJECT_NAME} ps

mongo5.0-logs:
	${DOCKER_COMPOSE_CMD} -f mongo/5.0/docker-compose.yml -p ${DEVBOX_MONGO50_PROJECT_NAME} logs -f

mongo5.0-purge:
	${DOCKER_COMPOSE_CMD} -f mongo/5.0/docker-compose.yml -p ${DEVBOX_MONGO50_PROJECT_NAME} down --volumes

mongo5.0-command:
	@echo "${DOCKER_COMPOSE_CMD} -f mongo/5.0/docker-compose.yml -p ${DEVBOX_MONGO50_PROJECT_NAME}"

mongo5.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mongo5.0-up		Start MongoDB 5.0 service and management tools"
	@echo "  make mongo5.0-down		Stop MongoDB 5.0 service and management tools"
	@echo "  make mongo5.0-status		Status from running services"
	@echo "  make mongo5.0-logs		Logs from running services"
	@echo "  make mongo5.0-purge		Delete all MongoDB 5.0 data"
	@echo "  make mongo5.0-info		Information about the services for use"
	@echo "  make mongo5.0-command		Print docker compose command"
	@echo "  make mongo5.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MONGO50_DB_USER			Default admin user"
	@echo "  DEVBOX_MONGO50_DB_PASSWORD			Default ${DEVBOX_MONGO50_DB_USER} password"
	@echo "  DEVBOX_MONGO50_DB_EXPORT_PORT			Port to expose MongoDB 5.0 in docker for your environment"
	@echo "  DEVBOX_MONGO50_EXPRESS_EXPORT_PORT		Port to expose Mongo Express in docker for access in your browser"
	@echo "  DEVBOX_MONGO50_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo "  DEVBOX_MONGO50_NOSQLCLIENT_EXPORT_PORT	Port to expose Nosqlclient in docker for access in your browser"
	@echo

mongo5.0-info:
	@echo
	@echo "MongoDB 5.0 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_MONGO50_DB_EXPORT_PORT}"
	@echo "  User: 		${DEVBOX_MONGO50_DB_USER}"
	@echo "  Password: 		${DEVBOX_MONGO50_DB_PASSWORD}"
	@echo "  Url: 			mongodb://${DEVBOX_MONGO50_DB_USER}:${DEVBOX_MONGO50_DB_PASSWORD}@db.mongo50.devbox.local:${DEVBOX_MONGO50_DB_EXPORT_PORT}"
	@echo "  Mongo Express: 	http://0.0.0.0:${DEVBOX_MONGO50_EXPRESS_EXPORT_PORT}"
	@echo "  DbGate: 		http://0.0.0.0:${DEVBOX_MONGO50_DBGATE_EXPORT_PORT}"
	@echo "  Nosqlclient: 		http://0.0.0.0:${DEVBOX_MONGO50_NOSQLCLIENT_EXPORT_PORT}"
	@echo
