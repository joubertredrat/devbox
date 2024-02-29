DEVBOX_MONGO60_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}hdj

DEVBOX_MONGO60_DB_EXPORT_PORT ?= 29017
DEVBOX_MONGO60_DB_USER ?= root
DEVBOX_MONGO60_DB_PASSWORD ?= password
DEVBOX_MONGO60_EXPRESS_EXPORT_PORT ?= 29018
DEVBOX_MONGO60_MONGOEXPRESS_USERNAME ?= admin
DEVBOX_MONGO60_MONGOEXPRESS_PASSWORD ?= password
DEVBOX_MONGO60_DBGATE_EXPORT_PORT ?= 29019
DEVBOX_MONGO60_NOSQLCLIENT_EXPORT_PORT ?= 29020

mongo6.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/6.0/compose.yml -p ${DEVBOX_MONGO60_PROJECT_NAME} up -d

mongo6.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/6.0/compose.yml -p ${DEVBOX_MONGO60_PROJECT_NAME} down

mongo6.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/6.0/compose.yml -p ${DEVBOX_MONGO60_PROJECT_NAME} ps

mongo6.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/6.0/compose.yml -p ${DEVBOX_MONGO60_PROJECT_NAME} logs -f

mongo6.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/6.0/compose.yml -p ${DEVBOX_MONGO60_PROJECT_NAME} down --volumes

mongo6.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mongo/6.0/compose.yml -p ${DEVBOX_MONGO60_PROJECT_NAME}"

mongo6.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mongo6.0-up		Start MongoDB 6.0 service and management tools"
	@echo "  make mongo6.0-down		Stop MongoDB 6.0 service and management tools"
	@echo "  make mongo6.0-status		Status from running services"
	@echo "  make mongo6.0-logs		Logs from running services"
	@echo "  make mongo6.0-purge		Delete all MongoDB 6.0 data"
	@echo "  make mongo6.0-info		Information about the services for use"
	@echo "  make mongo6.0-command		Print docker compose command"
	@echo "  make mongo6.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MONGO60_DB_USER			Default admin user"
	@echo "  DEVBOX_MONGO60_DB_PASSWORD			Default ${DEVBOX_MONGO60_DB_USER} password"
	@echo "  DEVBOX_MONGO60_DB_EXPORT_PORT			Port to expose MongoDB 6.0 in docker for your environment"
	@echo "  DEVBOX_MONGO60_EXPRESS_EXPORT_PORT		Port to expose Mongo Express in docker for access in your browser"
	@echo "  DEVBOX_MONGO60_MONGOEXPRESS_USERNAME		Username for login in Mongo Express in browser"
	@echo "  DEVBOX_MONGO60_MONGOEXPRESS_PASSWORD		Password for login in Mongo Express in browser"
	@echo "  DEVBOX_MONGO60_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo "  DEVBOX_MONGO60_NOSQLCLIENT_EXPORT_PORT	Port to expose Nosqlclient in docker for access in your browser"
	@echo

mongo6.0-info:
	@echo
	@echo "MongoDB 6.0 information"
	@echo
	@echo "  Host: 			127.0.0.1"
	@echo "  Port: 			${DEVBOX_MONGO60_DB_EXPORT_PORT}"
	@echo "  User: 			${DEVBOX_MONGO60_DB_USER}"
	@echo "  Password: 			${DEVBOX_MONGO60_DB_PASSWORD}"
	@echo "  Url: 				mongodb://${DEVBOX_MONGO60_DB_USER}:${DEVBOX_MONGO60_DB_PASSWORD}@127.0.0.1:${DEVBOX_MONGO60_DB_EXPORT_PORT}"
	@echo "  Mongo Express: 		http://127.0.0.1:${DEVBOX_MONGO60_EXPRESS_EXPORT_PORT}"
	@echo "  Mongo Express username: 	${DEVBOX_MONGO60_MONGOEXPRESS_USERNAME}"
	@echo "  Mongo Express password: 	${DEVBOX_MONGO60_MONGOEXPRESS_PASSWORD}"
	@echo "  DbGate: 			http://127.0.0.1:${DEVBOX_MONGO60_DBGATE_EXPORT_PORT}"
	@echo "  Nosqlclient: 			http://127.0.0.1:${DEVBOX_MONGO60_NOSQLCLIENT_EXPORT_PORT}"
	@echo
