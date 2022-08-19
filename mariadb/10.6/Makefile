DEVBOX_MARIADB106_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}qwn

DEVBOX_MARIADB106_ROOT_PASSWORD ?= password
DEVBOX_MARIADB106_DB_EXPORT_PORT ?= 14306
DEVBOX_MARIADB106_PMA_EXPORT_PORT ?= 14307
DEVBOX_MARIADB106_ADMINER_EXPORT_PORT ?= 14308
DEVBOX_MARIADB106_DBGATE_EXPORT_PORT ?= 14309

mariadb10.6-up:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.6/docker-compose.yml -p ${DEVBOX_MARIADB106_PROJECT_NAME} up -d

mariadb10.6-down:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.6/docker-compose.yml -p ${DEVBOX_MARIADB106_PROJECT_NAME} down

mariadb10.6-status:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.6/docker-compose.yml -p ${DEVBOX_MARIADB106_PROJECT_NAME} ps

mariadb10.6-logs:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.6/docker-compose.yml -p ${DEVBOX_MARIADB106_PROJECT_NAME} logs -f

mariadb10.6-purge:
	${DOCKER_COMPOSE_CMD} -f mariadb/10.6/docker-compose.yml -p ${DEVBOX_MARIADB106_PROJECT_NAME} down --volumes

mariadb10.6-command:
	@echo "${DOCKER_COMPOSE_CMD} -f mariadb/10.6/docker-compose.yml -p ${DEVBOX_MARIADB106_PROJECT_NAME}"

mariadb10.6-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mariadb10.6-up		Start MariaDB 10.6 service and management tools"
	@echo "  make mariadb10.6-down		Stop MariaDB 10.6 service and management tools"
	@echo "  make mariadb10.6-status	Status from running services"
	@echo "  make mariadb10.6-logs		Logs from running services"
	@echo "  make mariadb10.6-purge	Delete all MariaDB 10.6 data"
	@echo "  make mariadb10.6-info		Information about the services for use"
	@echo "  make mariadb10.6-command	Print docker compose command"
	@echo "  make mariadb10.6-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MARIADB106_ROOT_PASSWORD		Default root password"
	@echo "  DEVBOX_MARIADB106_DB_EXPORT_PORT		Port to expose MariaDB 10.6 in docker for your environment"
	@echo "  DEVBOX_MARIADB106_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MARIADB106_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MARIADB106_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mariadb10.6-info:
	@echo
	@echo "MariaDB 10.6 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MARIADB106_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MARIADB106_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://127.0.0.1:${DEVBOX_MARIADB106_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://127.0.0.1:${DEVBOX_MARIADB106_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MARIADB106_DBGATE_EXPORT_PORT}"
	@echo
