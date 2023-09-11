DEVBOX_POSTGRES142_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}js3

DEVBOX_POSTGRES142_POSTGRES_USER ?= postgres
DEVBOX_POSTGRES142_POSTGRES_PASSWORD ?= password
DEVBOX_POSTGRES142_POSTGRES_DB ?= dev
DEVBOX_POSTGRES142_DB_EXPORT_PORT ?= 15442
DEVBOX_POSTGRES142_PGADMIN_EXPORT_PORT ?= 15443
DEVBOX_POSTGRES142_PGADMIN_EMAIL ?= pgadmin4@devbox.local
DEVBOX_POSTGRES142_PGADMIN_PASSWORD ?= password
DEVBOX_POSTGRES142_PGWEB_EXPORT_PORT ?= 15444
DEVBOX_POSTGRES142_DBGATE_EXPORT_PORT ?= 15445

postgres14.2-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/14.2/compose.yml -p ${DEVBOX_POSTGRES142_PROJECT_NAME} up -d

postgres14.2-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/14.2/compose.yml -p ${DEVBOX_POSTGRES142_PROJECT_NAME} down

postgres14.2-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/14.2/compose.yml -p ${DEVBOX_POSTGRES142_PROJECT_NAME} ps

postgres14.2-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/14.2/compose.yml -p ${DEVBOX_POSTGRES142_PROJECT_NAME} logs -f

postgres14.2-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f postgres/14.2/compose.yml -p ${DEVBOX_POSTGRES142_PROJECT_NAME} down --volumes

postgres14.2-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f postgres/14.2/compose.yml -p ${DEVBOX_POSTGRES142_PROJECT_NAME}"

postgres14.2-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make postgres14.2-up		Start Postgres 14.2 service and management tools"
	@echo "  make postgres14.2-down	Stop Postgres 14.2 service and management tools"
	@echo "  make postgres14.2-status	Status from running services"
	@echo "  make postgres14.2-logs	Logs from running services"
	@echo "  make postgres14.2-purge	Delete all Postgres 14.2 data"
	@echo "  make postgres14.2-info	Information about the services for use"
	@echo "  make postgres14.2-command	Print docker compose command"
	@echo "  make postgres14.2-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_POSTGRES142_POSTGRES_USER		Default admin user"
	@echo "  DEVBOX_POSTGRES142_POSTGRES_PASSWORD		Default ${DEVBOX_POSTGRES142_POSTGRES_USER} password"
	@echo "  DEVBOX_POSTGRES142_POSTGRES_DB		Default database"
	@echo "  DEVBOX_POSTGRES142_DB_EXPORT_PORT		Port to expose Postgres 14.2 in docker for your environment"
	@echo "  DEVBOX_POSTGRES142_PGADMIN_EXPORT_PORT	Port to expose PgAdmin in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES142_PGADMIN_EMAIL		E-mail to login in PgAdmin in browser"
	@echo "  DEVBOX_POSTGRES142_PGADMIN_PASSWORD		Password to login in PgAdmin in browser"
	@echo "  DEVBOX_POSTGRES142_PGWEB_EXPORT_PORT		Port to expose Pgweb in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES142_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

postgres14.2-info:
	@echo
	@echo "Postgres 14.2 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_POSTGRES142_DB_EXPORT_PORT}"
	@echo "  User: 		${DEVBOX_POSTGRES142_POSTGRES_USER}"
	@echo "  Password: 		${DEVBOX_POSTGRES142_POSTGRES_PASSWORD}"
	@echo "  Database: 		${DEVBOX_POSTGRES142_POSTGRES_DB}"
	@echo "  Url:			postgres://${DEVBOX_POSTGRES142_POSTGRES_USER}:${DEVBOX_POSTGRES142_POSTGRES_PASSWORD}@127.0.0.1:${DEVBOX_POSTGRES142_DB_EXPORT_PORT}/${DEVBOX_POSTGRES142_POSTGRES_DB}?sslmode=disable"
	@echo "  PgAdmin: 		http://127.0.0.1:${DEVBOX_POSTGRES142_PGADMIN_EXPORT_PORT}"
	@echo "  PgAdmin user: 	${DEVBOX_POSTGRES142_PGADMIN_EMAIL}"
	@echo "  PgAdmin password: 	${DEVBOX_POSTGRES142_PGADMIN_PASSWORD}"
	@echo "  Pgweb: 		http://127.0.0.1:${DEVBOX_POSTGRES142_PGWEB_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_POSTGRES142_DBGATE_EXPORT_PORT}"
	@echo
