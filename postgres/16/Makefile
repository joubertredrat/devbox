DEVBOX_POSTGRES16_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}t20

DEVBOX_POSTGRES16_POSTGRES_USER ?= postgres
DEVBOX_POSTGRES16_POSTGRES_PASSWORD ?= password
DEVBOX_POSTGRES16_POSTGRES_DB ?= dev
DEVBOX_POSTGRES16_DB_EXPORT_PORT ?= 17442
DEVBOX_POSTGRES16_PGADMIN_EXPORT_PORT ?= 17443
DEVBOX_POSTGRES16_PGADMIN_EMAIL ?= pgadmin4@devbox.local
DEVBOX_POSTGRES16_PGADMIN_PASSWORD ?= password
DEVBOX_POSTGRES16_PGWEB_EXPORT_PORT ?= 17444
DEVBOX_POSTGRES16_DBGATE_EXPORT_PORT ?= 17445

postgres16-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/16/compose.yml -p ${DEVBOX_POSTGRES16_PROJECT_NAME} up -d

postgres16-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/16/compose.yml -p ${DEVBOX_POSTGRES16_PROJECT_NAME} down

postgres16-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/16/compose.yml -p ${DEVBOX_POSTGRES16_PROJECT_NAME} ps

postgres16-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/16/compose.yml -p ${DEVBOX_POSTGRES16_PROJECT_NAME} logs -f

postgres16-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/16/compose.yml -p ${DEVBOX_POSTGRES16_PROJECT_NAME} down --volumes

postgres16-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f postgres/16/compose.yml -p ${DEVBOX_POSTGRES16_PROJECT_NAME}"

postgres16-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make postgres16-up		Start Postgres 16 service and management tools"
	@echo "  make postgres16-down		Stop Postgres 16 service and management tools"
	@echo "  make postgres16-status	Status from running services"
	@echo "  make postgres16-logs		Logs from running services"
	@echo "  make postgres16-purge		Delete all Postgres 16 data"
	@echo "  make postgres16-info		Information about the services for use"
	@echo "  make postgres16-command	Print docker compose command"
	@echo "  make postgres16-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_POSTGRES16_POSTGRES_USER		Default admin user"
	@echo "  DEVBOX_POSTGRES16_POSTGRES_PASSWORD		Default ${DEVBOX_POSTGRES16_POSTGRES_USER} password"
	@echo "  DEVBOX_POSTGRES16_POSTGRES_DB			Default database"
	@echo "  DEVBOX_POSTGRES16_DB_EXPORT_PORT		Port to expose Postgres 16 in docker for your environment"
	@echo "  DEVBOX_POSTGRES16_PGADMIN_EXPORT_PORT		Port to expose PgAdmin in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES16_PGWEB_EXPORT_PORT		Port to expose Pgweb in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES16_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

postgres16-info:
	@echo
	@echo "Postgres 16 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_POSTGRES16_DB_EXPORT_PORT}"
	@echo "  User: 		${DEVBOX_POSTGRES16_POSTGRES_USER}"
	@echo "  Password: 		${DEVBOX_POSTGRES16_POSTGRES_PASSWORD}"
	@echo "  Database: 		${DEVBOX_POSTGRES16_POSTGRES_DB}"
	@echo "  Url:			postgres://${DEVBOX_POSTGRES16_POSTGRES_USER}:${DEVBOX_POSTGRES16_POSTGRES_PASSWORD}@127.0.0.1:${DEVBOX_POSTGRES16_DB_EXPORT_PORT}/${DEVBOX_POSTGRES16_POSTGRES_DB}?sslmode=disable"
	@echo "  PgAdmin: 		http://127.0.0.1:${DEVBOX_POSTGRES16_PGADMIN_EXPORT_PORT}"
	@echo "  Pgweb: 		http://127.0.0.1:${DEVBOX_POSTGRES16_PGWEB_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_POSTGRES16_DBGATE_EXPORT_PORT}"
	@echo
