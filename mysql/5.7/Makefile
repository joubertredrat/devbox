DEVBOX_MYSQL57_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}4tx

DEVBOX_MYSQL57_ROOT_PASSWORD ?= password
DEVBOX_MYSQL57_DB_EXPORT_PORT ?= 13306
DEVBOX_MYSQL57_PMA_EXPORT_PORT ?= 13307
DEVBOX_MYSQL57_ADMINER_EXPORT_PORT ?= 13308
DEVBOX_MYSQL57_DBGATE_EXPORT_PORT ?= 13309

mysql5.7-up:
	${DOCKER_COMPOSE_CMD} -f mysql/5.7/docker-compose.yml -p ${DEVBOX_MYSQL57_PROJECT_NAME} up -d

mysql5.7-down:
	${DOCKER_COMPOSE_CMD} -f mysql/5.7/docker-compose.yml -p ${DEVBOX_MYSQL57_PROJECT_NAME} down

mysql5.7-status:
	${DOCKER_COMPOSE_CMD} -f mysql/5.7/docker-compose.yml -p ${DEVBOX_MYSQL57_PROJECT_NAME} ps

mysql5.7-logs:
	${DOCKER_COMPOSE_CMD} -f mysql/5.7/docker-compose.yml -p ${DEVBOX_MYSQL57_PROJECT_NAME} logs -f

mysql5.7-purge:
	${DOCKER_COMPOSE_CMD} -f mysql/5.7/docker-compose.yml -p ${DEVBOX_MYSQL57_PROJECT_NAME} down --volumes

mysql5.7-command:
	@echo "${DOCKER_COMPOSE_CMD} -f mysql/5.7/docker-compose.yml -p ${DEVBOX_MYSQL57_PROJECT_NAME}"

mysql5.7-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mysql5.7-up		Start MySQL 5.7 service and management tools"
	@echo "  make mysql5.7-down		Stop MySQL 5.7 service and management tools"
	@echo "  make mysql5.7-status		Status from running services"
	@echo "  make mysql5.7-logs		Logs from running services"
	@echo "  make mysql5.7-purge		Delete all MySQL 5.7 data"
	@echo "  make mysql5.7-info		Information about the services for use"
	@echo "  make mysql5.7-command		Print docker compose command"
	@echo "  make mysql5.7-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MYSQL57_ROOT_PASSWORD			Default root password"
	@echo "  DEVBOX_MYSQL57_DB_EXPORT_PORT			Port to expose MySQL 5.7 in docker for your environment"
	@echo "  DEVBOX_MYSQL57_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MYSQL57_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MYSQL57_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mysql5.7-info:
	@echo
	@echo "MySQL 5.7 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_MYSQL57_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MYSQL57_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://0.0.0.0:${DEVBOX_MYSQL57_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://0.0.0.0:${DEVBOX_MYSQL57_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://0.0.0.0:${DEVBOX_MYSQL57_DBGATE_EXPORT_PORT}"
	@echo
