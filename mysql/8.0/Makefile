DEVBOX_MYSQL80_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}9ad

DEVBOX_MYSQL80_ROOT_PASSWORD ?= password
DEVBOX_MYSQL80_DB_EXPORT_PORT ?= 14406
DEVBOX_MYSQL80_PMA_EXPORT_PORT ?= 14407
DEVBOX_MYSQL80_ADMINER_EXPORT_PORT ?= 14408
DEVBOX_MYSQL80_DBGATE_EXPORT_PORT ?= 14409

mysql8.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.0/compose.yml -p ${DEVBOX_MYSQL80_PROJECT_NAME} up -d

mysql8.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.0/compose.yml -p ${DEVBOX_MYSQL80_PROJECT_NAME} down

mysql8.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.0/compose.yml -p ${DEVBOX_MYSQL80_PROJECT_NAME} ps

mysql8.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.0/compose.yml -p ${DEVBOX_MYSQL80_PROJECT_NAME} logs -f

mysql8.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.0/compose.yml -p ${DEVBOX_MYSQL80_PROJECT_NAME} down --volumes

mysql8.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mysql/8.0/compose.yml -p ${DEVBOX_MYSQL80_PROJECT_NAME}"

mysql8.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mysql8.0-up		Start MySQL 8.0 service and management tools"
	@echo "  make mysql8.0-down		Stop MySQL 8.0 service and management tools"
	@echo "  make mysql8.0-status		Status from running services"
	@echo "  make mysql8.0-logs		Logs from running services"
	@echo "  make mysql8.0-purge		Delete all MySQL 8.0 data"
	@echo "  make mysql8.0-info		Information about the services for use"
	@echo "  make mysql8.0-command		Print docker compose command"
	@echo "  make mysql8.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MYSQL80_ROOT_PASSWORD			Default root password"
	@echo "  DEVBOX_MYSQL80_DB_EXPORT_PORT			Port to expose MySQL 8.0 in docker for your environment"
	@echo "  DEVBOX_MYSQL80_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MYSQL80_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MYSQL80_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mysql8.0-info:
	@echo
	@echo "MySQL 8.0 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MYSQL80_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MYSQL80_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://127.0.0.1:${DEVBOX_MYSQL80_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://127.0.0.1:${DEVBOX_MYSQL80_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MYSQL80_DBGATE_EXPORT_PORT}"
	@echo
