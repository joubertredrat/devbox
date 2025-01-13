DEVBOX_MONGO80_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}t0a

DEVBOX_MONGO80_DB_EXPORT_PORT ?= 31017
DEVBOX_MONGO80_DB_USER ?= root
DEVBOX_MONGO80_DB_PASSWORD ?= password
DEVBOX_MONGO80_EXPRESS_EXPORT_PORT ?= 31018
DEVBOX_MONGO80_MONGOEXPRESS_USERNAME ?= admin
DEVBOX_MONGO80_MONGOEXPRESS_PASSWORD ?= password
DEVBOX_MONGO80_DBGATE_EXPORT_PORT ?= 31019
DEVBOX_MONGO80_NOSQLCLIENT_EXPORT_PORT ?= 31020

mongo8.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/8.0/compose.yml -p ${DEVBOX_MONGO80_PROJECT_NAME} up -d

mongo8.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/8.0/compose.yml -p ${DEVBOX_MONGO80_PROJECT_NAME} down

mongo8.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/8.0/compose.yml -p ${DEVBOX_MONGO80_PROJECT_NAME} ps

mongo8.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/8.0/compose.yml -p ${DEVBOX_MONGO80_PROJECT_NAME} logs -f

mongo8.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/8.0/compose.yml -p ${DEVBOX_MONGO80_PROJECT_NAME} down --volumes

mongo8.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mongo/8.0/compose.yml -p ${DEVBOX_MONGO80_PROJECT_NAME}"

mongo8.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mongo8.0-up		Start MongoDB 8.0 service and management tools"
	@echo "  make mongo8.0-down		Stop MongoDB 8.0 service and management tools"
	@echo "  make mongo8.0-status		Status from running services"
	@echo "  make mongo8.0-logs		Logs from running services"
	@echo "  make mongo8.0-purge		Delete all MongoDB 8.0 data"
	@echo "  make mongo8.0-info		Information about the services for use"
	@echo "  make mongo8.0-command		Print docker compose command"
	@echo "  make mongo8.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MONGO80_DB_USER			Default admin user"
	@echo "  DEVBOX_MONGO80_DB_PASSWORD			Default ${DEVBOX_MONGO80_DB_USER} password"
	@echo "  DEVBOX_MONGO80_DB_EXPORT_PORT			Port to expose MongoDB 8.0 in docker for your environment"
	@echo "  DEVBOX_MONGO80_EXPRESS_EXPORT_PORT		Port to expose Mongo Express in docker for access in your browser"
	@echo "  DEVBOX_MONGO80_MONGOEXPRESS_USERNAME		Username for login in Mongo Express in browser"
	@echo "  DEVBOX_MONGO80_MONGOEXPRESS_PASSWORD		Password for login in Mongo Express in browser"
	@echo "  DEVBOX_MONGO80_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo "  DEVBOX_MONGO50_NOSQLCLIENT_EXPORT_PORT	Port to expose Nosqlclient in docker for access in your browser"
	@echo

mongo8.0-info:
	@echo
	@echo "MongoDB 8.0 information"
	@echo
	@echo "  Host: 			127.0.0.1"
	@echo "  Port: 			${DEVBOX_MONGO80_DB_EXPORT_PORT}"
	@echo "  User: 			${DEVBOX_MONGO80_DB_USER}"
	@echo "  Password: 			${DEVBOX_MONGO80_DB_PASSWORD}"
	@echo "  Url: 				mongodb://${DEVBOX_MONGO80_DB_USER}:${DEVBOX_MONGO80_DB_PASSWORD}@127.0.0.1:${DEVBOX_MONGO80_DB_EXPORT_PORT}"
	@echo "  Mongo Express: 		http://127.0.0.1:${DEVBOX_MONGO80_EXPRESS_EXPORT_PORT}"
	@echo "  Mongo Express username: 	${DEVBOX_MONGO80_MONGOEXPRESS_USERNAME}"
	@echo "  Mongo Express password: 	${DEVBOX_MONGO80_MONGOEXPRESS_PASSWORD}"
	@echo "  DbGate: 			http://127.0.0.1:${DEVBOX_MONGO80_DBGATE_EXPORT_PORT}"
	@echo "  Nosqlclient: 			http://127.0.0.1:${DEVBOX_MONGO80_NOSQLCLIENT_EXPORT_PORT}"
	@echo
