DEVBOX_MYSQL90_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}9a5

DEVBOX_MYSQL90_ROOT_PASSWORD ?= password
DEVBOX_MYSQL90_DB_EXPORT_PORT ?= 16406
DEVBOX_MYSQL90_PMA_EXPORT_PORT ?= 16407
DEVBOX_MYSQL90_ADMINER_EXPORT_PORT ?= 16408
DEVBOX_MYSQL90_DBGATE_EXPORT_PORT ?= 16409

mysql9.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/9.0/compose.yml -p ${DEVBOX_MYSQL90_PROJECT_NAME} up -d

mysql9.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/9.0/compose.yml -p ${DEVBOX_MYSQL90_PROJECT_NAME} down

mysql9.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/9.0/compose.yml -p ${DEVBOX_MYSQL90_PROJECT_NAME} ps

mysql9.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/9.0/compose.yml -p ${DEVBOX_MYSQL90_PROJECT_NAME} logs -f

mysql9.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/9.0/compose.yml -p ${DEVBOX_MYSQL90_PROJECT_NAME} down --volumes

mysql9.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mysql/9.0/compose.yml -p ${DEVBOX_MYSQL90_PROJECT_NAME}"

mysql9.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mysql9.0-up		Start MySQL 9.0 service and management tools"
	@echo "  make mysql9.0-down		Stop MySQL 9.0 service and management tools"
	@echo "  make mysql9.0-status		Status from running services"
	@echo "  make mysql9.0-logs		Logs from running services"
	@echo "  make mysql9.0-purge		Delete all MySQL 9.0 data"
	@echo "  make mysql9.0-info		Information about the services for use"
	@echo "  make mysql9.0-command		Print docker compose command"
	@echo "  make mysql9.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MYSQL90_ROOT_PASSWORD			Default root password"
	@echo "  DEVBOX_MYSQL90_DB_EXPORT_PORT			Port to expose MySQL 9.0 in docker for your environment"
	@echo "  DEVBOX_MYSQL90_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MYSQL90_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MYSQL90_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mysql9.0-info:
	@echo
	@echo "MySQL 9.0 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MYSQL90_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MYSQL90_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://127.0.0.1:${DEVBOX_MYSQL90_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://127.0.0.1:${DEVBOX_MYSQL90_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MYSQL90_DBGATE_EXPORT_PORT}"
	@echo
