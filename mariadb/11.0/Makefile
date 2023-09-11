DEVBOX_MARIADB110_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}nth

DEVBOX_MARIADB110_ROOT_PASSWORD ?= password
DEVBOX_MARIADB110_DB_EXPORT_PORT ?= 15306
DEVBOX_MARIADB110_PMA_EXPORT_PORT ?= 15307
DEVBOX_MARIADB110_ADMINER_EXPORT_PORT ?= 15308
DEVBOX_MARIADB110_DBGATE_EXPORT_PORT ?= 15309

mariadb11.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.0/compose.yml -p ${DEVBOX_MARIADB110_PROJECT_NAME} up -d

mariadb11.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.0/compose.yml -p ${DEVBOX_MARIADB110_PROJECT_NAME} down

mariadb11.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.0/compose.yml -p ${DEVBOX_MARIADB110_PROJECT_NAME} ps

mariadb11.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.0/compose.yml -p ${DEVBOX_MARIADB110_PROJECT_NAME} logs -f

mariadb11.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mariadb/11.0/compose.yml -p ${DEVBOX_MARIADB110_PROJECT_NAME} down --volumes

mariadb11.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mariadb/11.0/compose.yml -p ${DEVBOX_MARIADB110_PROJECT_NAME}"

mariadb11.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mariadb11.0-up		Start MariaDB 11.0 service and management tools"
	@echo "  make mariadb11.0-down		Stop MariaDB 11.0 service and management tools"
	@echo "  make mariadb11.0-status	Status from running services"
	@echo "  make mariadb11.0-logs		Logs from running services"
	@echo "  make mariadb11.0-purge	Delete all MariaDB 11.0 data"
	@echo "  make mariadb11.0-info		Information about the services for use"
	@echo "  make mariadb11.0-command	Print docker compose command"
	@echo "  make mariadb11.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MARIADB110_ROOT_PASSWORD		Default root password"
	@echo "  DEVBOX_MARIADB110_DB_EXPORT_PORT		Port to expose MariaDB 11.0 in docker for your environment"
	@echo "  DEVBOX_MARIADB110_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MARIADB110_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MARIADB110_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mariadb11.0-info:
	@echo
	@echo "MariaDB 11.0 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MARIADB110_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MARIADB110_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://127.0.0.1:${DEVBOX_MARIADB110_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://127.0.0.1:${DEVBOX_MARIADB110_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MARIADB110_DBGATE_EXPORT_PORT}"
	@echo
