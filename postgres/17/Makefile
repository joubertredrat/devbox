DEVBOX_POSTGRES17_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}t21

DEVBOX_POSTGRES17_POSTGRES_USER ?= postgres
DEVBOX_POSTGRES17_POSTGRES_PASSWORD ?= password
DEVBOX_POSTGRES17_POSTGRES_DB ?= dev
DEVBOX_POSTGRES17_DB_EXPORT_PORT ?= 18442
DEVBOX_POSTGRES17_PGADMIN_EXPORT_PORT ?= 18443
DEVBOX_POSTGRES17_PGADMIN_EMAIL ?= pgadmin4@devbox.local
DEVBOX_POSTGRES17_PGADMIN_PASSWORD ?= password
DEVBOX_POSTGRES17_PGWEB_EXPORT_PORT ?= 18444
DEVBOX_POSTGRES17_DBGATE_EXPORT_PORT ?= 18445

postgres17-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/17/compose.yml -p ${DEVBOX_POSTGRES17_PROJECT_NAME} up -d

postgres17-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/17/compose.yml -p ${DEVBOX_POSTGRES17_PROJECT_NAME} down

postgres17-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/17/compose.yml -p ${DEVBOX_POSTGRES17_PROJECT_NAME} ps

postgres17-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/17/compose.yml -p ${DEVBOX_POSTGRES17_PROJECT_NAME} logs -f

postgres17-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/17/compose.yml -p ${DEVBOX_POSTGRES17_PROJECT_NAME} down --volumes

postgres17-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f postgres/17/compose.yml -p ${DEVBOX_POSTGRES17_PROJECT_NAME}"

postgres17-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make postgres17-up		Start Postgres 17 service and management tools"
	@echo "  make postgres17-down		Stop Postgres 17 service and management tools"
	@echo "  make postgres17-status	Status from running services"
	@echo "  make postgres17-logs		Logs from running services"
	@echo "  make postgres17-purge		Delete all Postgres 17 data"
	@echo "  make postgres17-info		Information about the services for use"
	@echo "  make postgres17-command	Print docker compose command"
	@echo "  make postgres17-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_POSTGRES17_POSTGRES_USER		Default admin user"
	@echo "  DEVBOX_POSTGRES17_POSTGRES_PASSWORD		Default ${DEVBOX_POSTGRES17_POSTGRES_USER} password"
	@echo "  DEVBOX_POSTGRES17_POSTGRES_DB			Default database"
	@echo "  DEVBOX_POSTGRES17_DB_EXPORT_PORT		Port to expose Postgres 17 in docker for your environment"
	@echo "  DEVBOX_POSTGRES17_PGADMIN_EXPORT_PORT		Port to expose PgAdmin in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES17_PGWEB_EXPORT_PORT		Port to expose Pgweb in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES17_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

postgres17-info:
	@echo
	@echo "Postgres 17 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_POSTGRES17_DB_EXPORT_PORT}"
	@echo "  User: 		${DEVBOX_POSTGRES17_POSTGRES_USER}"
	@echo "  Password: 		${DEVBOX_POSTGRES17_POSTGRES_PASSWORD}"
	@echo "  Database: 		${DEVBOX_POSTGRES17_POSTGRES_DB}"
	@echo "  Url:			postgres://${DEVBOX_POSTGRES17_POSTGRES_USER}:${DEVBOX_POSTGRES17_POSTGRES_PASSWORD}@127.0.0.1:${DEVBOX_POSTGRES17_DB_EXPORT_PORT}/${DEVBOX_POSTGRES17_POSTGRES_DB}?sslmode=disable"
	@echo "  PgAdmin: 		http://127.0.0.1:${DEVBOX_POSTGRES17_PGADMIN_EXPORT_PORT}"
	@echo "  Pgweb: 		http://127.0.0.1:${DEVBOX_POSTGRES17_PGWEB_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_POSTGRES17_DBGATE_EXPORT_PORT}"
	@echo
