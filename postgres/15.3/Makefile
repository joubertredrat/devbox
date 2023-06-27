DEVBOX_POSTGRES153_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}js3

DEVBOX_POSTGRES153_POSTGRES_USER ?= postgres
DEVBOX_POSTGRES153_POSTGRES_PASSWORD ?= password
DEVBOX_POSTGRES153_POSTGRES_DB ?= dev
DEVBOX_POSTGRES153_DB_EXPORT_PORT ?= 16442
DEVBOX_POSTGRES153_PGADMIN_EXPORT_PORT ?= 16443
DEVBOX_POSTGRES153_PGADMIN_EMAIL ?= pgadmin4@devbox.local
DEVBOX_POSTGRES153_PGADMIN_PASSWORD ?= password
DEVBOX_POSTGRES153_PGWEB_EXPORT_PORT ?= 16444
DEVBOX_POSTGRES153_DBGATE_EXPORT_PORT ?= 16445

postgres15.3-up:
	${DOCKER_COMPOSE_CMD} -f postgres/15.3/docker-compose.yml -p ${DEVBOX_POSTGRES153_PROJECT_NAME} up -d

postgres15.3-down:
	${DOCKER_COMPOSE_CMD} -f postgres/15.3/docker-compose.yml -p ${DEVBOX_POSTGRES153_PROJECT_NAME} down

postgres15.3-status:
	${DOCKER_COMPOSE_CMD} -f postgres/15.3/docker-compose.yml -p ${DEVBOX_POSTGRES153_PROJECT_NAME} ps

postgres15.3-logs:
	${DOCKER_COMPOSE_CMD} -f postgres/15.3/docker-compose.yml -p ${DEVBOX_POSTGRES153_PROJECT_NAME} logs -f

postgres15.3-purge:
	${DOCKER_COMPOSE_CMD} -f postgres/15.3/docker-compose.yml -p ${DEVBOX_POSTGRES153_PROJECT_NAME} down --volumes

postgres15.3-command:
	@echo "${DOCKER_COMPOSE_CMD} -f postgres/15.3/docker-compose.yml -p ${DEVBOX_POSTGRES153_PROJECT_NAME}"

postgres15.3-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make postgres15.3-up		Start Postgres 15.3 service and management tools"
	@echo "  make postgres15.3-down	Stop Postgres 15.3 service and management tools"
	@echo "  make postgres15.3-status	Status from running services"
	@echo "  make postgres15.3-logs	Logs from running services"
	@echo "  make postgres15.3-purge	Delete all Postgres 15.3 data"
	@echo "  make postgres15.3-info	Information about the services for use"
	@echo "  make postgres15.3-command	Print docker compose command"
	@echo "  make postgres15.3-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_POSTGRES153_POSTGRES_USER		Default admin user"
	@echo "  DEVBOX_POSTGRES153_POSTGRES_PASSWORD		Default ${DEVBOX_POSTGRES153_POSTGRES_USER} password"
	@echo "  DEVBOX_POSTGRES153_POSTGRES_DB		Default database"
	@echo "  DEVBOX_POSTGRES153_DB_EXPORT_PORT		Port to expose Postgres 15.3 in docker for your environment"
	@echo "  DEVBOX_POSTGRES153_PGADMIN_EXPORT_PORT	Port to expose PgAdmin in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES153_PGADMIN_EMAIL		E-mail to login in PgAdmin in browser"
	@echo "  DEVBOX_POSTGRES153_PGADMIN_PASSWORD		Password to login in PgAdmin in browser"
	@echo "  DEVBOX_POSTGRES153_PGWEB_EXPORT_PORT		Port to expose Pgweb in docker for access in your browser"
	@echo "  DEVBOX_POSTGRES153_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo

postgres15.3-info:
	@echo
	@echo "Postgres 15.3 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_POSTGRES153_DB_EXPORT_PORT}"
	@echo "  User: 		${DEVBOX_POSTGRES153_POSTGRES_USER}"
	@echo "  Password: 		${DEVBOX_POSTGRES153_POSTGRES_PASSWORD}"
	@echo "  Database: 		${DEVBOX_POSTGRES153_POSTGRES_DB}"
	@echo "  Url:			postgres://${DEVBOX_POSTGRES153_POSTGRES_USER}:${DEVBOX_POSTGRES153_POSTGRES_PASSWORD}@127.0.0.1:${DEVBOX_POSTGRES153_DB_EXPORT_PORT}/${DEVBOX_POSTGRES153_POSTGRES_DB}?sslmode=disable"
	@echo "  PgAdmin: 		http://127.0.0.1:${DEVBOX_POSTGRES153_PGADMIN_EXPORT_PORT}"
	@echo "  PgAdmin user: 	${DEVBOX_POSTGRES153_PGADMIN_EMAIL}"
	@echo "  PgAdmin password: 	${DEVBOX_POSTGRES153_PGADMIN_PASSWORD}"
	@echo "  Pgweb: 		http://127.0.0.1:${DEVBOX_POSTGRES153_PGWEB_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_POSTGRES153_DBGATE_EXPORT_PORT}"
	@echo
