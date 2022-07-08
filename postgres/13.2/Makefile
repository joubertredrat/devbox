DEVBOX_POSTGRES132_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}qjk

DEVBOX_POSTGRES132_POSTGRES_USER ?= postgres
DEVBOX_POSTGRES132_POSTGRES_PASSWORD ?= password
DEVBOX_POSTGRES132_POSTGRES_DB ?= dev
DEVBOX_POSTGRES132_DB_EXPORT_PORT ?= 15432
DEVBOX_POSTGRES132_PGADMIN_EXPORT_PORT ?= 15433
DEVBOX_POSTGRES132_PGADMIN_EMAIL ?= pgadmin4@devbox.local
DEVBOX_POSTGRES132_PGADMIN_PASSWORD ?= password
DEVBOX_POSTGRES132_PGWEB_EXPORT_PORT ?= 15434
DEVBOX_POSTGRES132_DBGATE_EXPORT_PORT ?= 15435

postgres13.2-up:
	${DOCKER_COMPOSE_CMD} -f postgres/13.2/docker-compose.yml -p ${DEVBOX_POSTGRES132_PROJECT_NAME} up -d

postgres13.2-down:
	${DOCKER_COMPOSE_CMD} -f postgres/13.2/docker-compose.yml -p ${DEVBOX_POSTGRES132_PROJECT_NAME} down

postgres13.2-status:
	${DOCKER_COMPOSE_CMD} -f postgres/13.2/docker-compose.yml -p ${DEVBOX_POSTGRES132_PROJECT_NAME} ps

postgres13.2-logs:
	${DOCKER_COMPOSE_CMD} -f postgres/13.2/docker-compose.yml -p ${DEVBOX_POSTGRES132_PROJECT_NAME} logs -f

postgres13.2-purge:
	${DOCKER_COMPOSE_CMD} -f postgres/13.2/docker-compose.yml -p ${DEVBOX_POSTGRES132_PROJECT_NAME} down --volumes

postgres13.2-command:
	@echo "${DOCKER_COMPOSE_CMD} -f postgres/13.2/docker-compose.yml -p ${DEVBOX_POSTGRES132_PROJECT_NAME}"

postgres13.2-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make postgres13.2-up		Start Postgres 13.2 service and management tools"
	@echo "  make postgres13.2-down	Stop Postgres 13.2 service and management tools"
	@echo "  make postgres13.2-status	Status from running services"
	@echo "  make postgres13.2-logs	Logs from running services"
	@echo "  make postgres13.2-purge	Delete all Postgres 13.2 data"
	@echo "  make postgres13.2-info	Information about the services for use"
	@echo "  make postgres13.2-command	Print docker compose command"
	@echo "  make postgres13.2-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_POSTGRES132_POSTGRES_USER		Default admin user"
	@echo "  DEVBOX_POSTGRES132_POSTGRES_PASSWORD		Default ${DEVBOX_POSTGRES132_POSTGRES_USER} password"
	@echo "  DEVBOX_POSTGRES132_POSTGRES_DB		Default database"
	@echo "  DEVBOX_POSTGRES132_DB_EXPORT_PORT		Port to expose Postgres 13.2 in docker for your environment"
	@echo "  DEVBOX_POSTGRES132_PGADMIN_EXPORT_PORT	Port to expose PgAdmin in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES132_PGADMIN_EMAIL		E-mail to login in PgAdmin in browser"
	@echo "  DEVBOX_POSTGRES132_PGADMIN_PASSWORD		Password to login in PgAdmin in browser"
	@echo "  DEVBOX_POSTGRES132_PGWEB_EXPORT_PORT		Port to expose Pgweb in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES132_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

postgres13.2-info:
	@echo
	@echo "Postgres 13.2 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_POSTGRES132_DB_EXPORT_PORT}"
	@echo "  User: 		${DEVBOX_POSTGRES132_POSTGRES_USER}"
	@echo "  Password: 		${DEVBOX_POSTGRES132_POSTGRES_PASSWORD}"
	@echo "  Database: 		${DEVBOX_POSTGRES132_POSTGRES_DB}"
	@echo "  PgAdmin: 		http://0.0.0.0:${DEVBOX_POSTGRES132_PGADMIN_EXPORT_PORT}"
	@echo "  PgAdmin user: 	${DEVBOX_POSTGRES132_PGADMIN_EMAIL}"
	@echo "  PgAdmin password: 	${DEVBOX_POSTGRES132_PGADMIN_PASSWORD}"
	@echo "  Pgweb: 		http://0.0.0.0:${DEVBOX_POSTGRES132_PGWEB_EXPORT_PORT}"
	@echo "  DbGate: 		http://0.0.0.0:${DEVBOX_POSTGRES132_DBGATE_EXPORT_PORT}"
	@echo
