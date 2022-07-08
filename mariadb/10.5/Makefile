DEVBOX_MARIADB105_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}cyf

DEVBOX_MARIADB105_ROOT_PASSWORD ?= password
DEVBOX_MARIADB105_DB_EXPORT_PORT ?= 13306
DEVBOX_MARIADB105_PMA_EXPORT_PORT ?= 13307
DEVBOX_MARIADB105_ADMINER_EXPORT_PORT ?= 13308
DEVBOX_MARIADB105_DBGATE_EXPORT_PORT ?= 13309

mariadb10.5-up:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_MARIADB105_PROJECT_NAME} up -d

mariadb10.5-down:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_MARIADB105_PROJECT_NAME} down

mariadb10.5-status:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_MARIADB105_PROJECT_NAME} ps

mariadb10.5-logs:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_MARIADB105_PROJECT_NAME} logs -f

mariadb10.5-purge:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_MARIADB105_PROJECT_NAME} down --volumes

mariadb10.5-command:
	@echo "${DOCKER_COMPOSE_CMD} -f mariadb/10.5/docker-compose.yml -p ${DEVBOX_MARIADB105_PROJECT_NAME}"

mariadb10.5-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mariadb10.5-up		Start MariaDB 10.5 service and management tools"
	@echo "  make mariadb10.5-down		Stop MariaDB 10.5 service and management tools"
	@echo "  make mariadb10.5-status	Status from running services"
	@echo "  make mariadb10.5-logs		Logs from running services"
	@echo "  make mariadb10.5-purge	Delete all MariaDB 10.5 data"
	@echo "  make mariadb10.5-info		Information about the services for use"
	@echo "  make mariadb10.5-command	Print docker compose command"
	@echo "  make mariadb10.5-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MARIADB105_ROOT_PASSWORD		Default root password"
	@echo "  DEVBOX_MARIADB105_DB_EXPORT_PORT		Port to expose MariaDB 10.5 in docker for your environment"
	@echo "  DEVBOX_MARIADB105_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MARIADB105_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MARIADB105_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mariadb10.5-info:
	@echo
	@echo "MariaDB 10.5 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_MARIADB105_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MARIADB105_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://0.0.0.0:${DEVBOX_MARIADB105_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://0.0.0.0:${DEVBOX_MARIADB105_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://0.0.0.0:${DEVBOX_MARIADB105_DBGATE_EXPORT_PORT}"
	@echo
