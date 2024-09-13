DEVBOX_MYSQL84_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}dr7

DEVBOX_MYSQL84_ROOT_PASSWORD ?= password
DEVBOX_MYSQL84_DB_EXPORT_PORT ?= 15406
DEVBOX_MYSQL84_PMA_EXPORT_PORT ?= 15407
DEVBOX_MYSQL84_ADMINER_EXPORT_PORT ?= 15408
DEVBOX_MYSQL84_DBGATE_EXPORT_PORT ?= 15409

mysql8.4-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.4/compose.yml -p ${DEVBOX_MYSQL84_PROJECT_NAME} up -d

mysql8.4-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.4/compose.yml -p ${DEVBOX_MYSQL84_PROJECT_NAME} down

mysql8.4-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.4/compose.yml -p ${DEVBOX_MYSQL84_PROJECT_NAME} ps

mysql8.4-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.4/compose.yml -p ${DEVBOX_MYSQL84_PROJECT_NAME} logs -f

mysql8.4-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mysql/8.4/compose.yml -p ${DEVBOX_MYSQL84_PROJECT_NAME} down --volumes

mysql8.4-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mysql/8.4/compose.yml -p ${DEVBOX_MYSQL84_PROJECT_NAME}"

mysql8.4-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mysql8.4-up		Start MySQL 8.4 service and management tools"
	@echo "  make mysql8.4-down		Stop MySQL 8.4 service and management tools"
	@echo "  make mysql8.4-status		Status from running services"
	@echo "  make mysql8.4-logs		Logs from running services"
	@echo "  make mysql8.4-purge		Delete all MySQL 8.4 data"
	@echo "  make mysql8.4-info		Information about the services for use"
	@echo "  make mysql8.4-command		Print docker compose command"
	@echo "  make mysql8.4-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MYSQL84_ROOT_PASSWORD			Default root password"
	@echo "  DEVBOX_MYSQL84_DB_EXPORT_PORT			Port to expose MySQL 8.4 in docker for your environment"
	@echo "  DEVBOX_MYSQL84_PMA_EXPORT_PORT		Port to expose PhpMyAdmin in docker for access in your browser"
	@echo "  DEVBOX_MYSQL84_ADMINER_EXPORT_PORT		Port to expose Adminer in docker for access in your browser"
	@echo "  DEVBOX_MYSQL84_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

mysql8.4-info:
	@echo
	@echo "MySQL 8.4 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MYSQL84_DB_EXPORT_PORT}"
	@echo "  User: 		root"
	@echo "  Password: 		${DEVBOX_MYSQL84_ROOT_PASSWORD}"
	@echo "  PhpMyAdmin: 		http://127.0.0.1:${DEVBOX_MYSQL84_PMA_EXPORT_PORT}"
	@echo "  Adminer: 		http://127.0.0.1:${DEVBOX_MYSQL84_ADMINER_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MYSQL84_DBGATE_EXPORT_PORT}"
	@echo
