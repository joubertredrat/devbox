DEVBOX_MARIADB114_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}s3x

DEVBOX_MARIADB114_ROOT_PASSWORD ?= password
DEVBOX_MARIADB114_DB_EXPORT_PORT ?= 16306
DEVBOX_MARIADB114_PMA_EXPORT_PORT ?= 16307
DEVBOX_MARIADB114_ADMINER_EXPORT_PORT ?= 16308
DEVBOX_MARIADB114_DBGATE_EXPORT_PORT ?= 16309

mariadb11.4-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.4/compose.yml -p ${DEVBOX_MARIADB114_PROJECT_NAME} up -d

mariadb11.4-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.4/compose.yml -p ${DEVBOX_MARIADB114_PROJECT_NAME} down

mariadb11.4-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.4/compose.yml -p ${DEVBOX_MARIADB114_PROJECT_NAME} ps

mariadb11.4-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.4/compose.yml -p ${DEVBOX_MARIADB114_PROJECT_NAME} logs -f

mariadb11.4-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.4/compose.yml -p ${DEVBOX_MARIADB114_PROJECT_NAME} down --volumes

mariadb11.4-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mariadb/11.4/compose.yml -p ${DEVBOX_MARIADB114_PROJECT_NAME}"

mariadb11.4-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mariadb11.4-up		Start MariaDB 11.4 service and management tools"
	@echo "  make mariadb11.4-down		Stop MariaDB 11.4 service and management tools"
	@echo "  make mariadb11.4-status	Status from running services"
	@echo "  make mariadb11.4-logs		Logs from running services"
	@echo "  make mariadb11.4-purge	Delete all MariaDB 11.4 data"
	@echo "  make mariadb11.4-info		Information about the services for use"
	@echo "  make mariadb11.4-command	Print docker compose command"
	@echo "  make mariadb11.4-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MARIADB114_ROOT_PASSWORD		Default root password"
	@echo "  DEVBOX_MARIADB114_DB_EXPORT_PORT		Port to expose MariaDB 11.4 in docker for your environment"
	@echo "  DEVBOX_MARIADB114_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MARIADB114_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MARIADB114_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mariadb11.4-info:
	@echo
	@echo "MariaDB 11.4 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MARIADB114_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MARIADB114_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://127.0.0.1:${DEVBOX_MARIADB114_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://127.0.0.1:${DEVBOX_MARIADB114_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MARIADB114_DBGATE_EXPORT_PORT}"
	@echo
