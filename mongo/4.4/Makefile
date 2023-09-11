DEVBOX_MONGO44_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}arq

DEVBOX_MONGO44_DB_EXPORT_PORT ?= 27017
DEVBOX_MONGO44_EXPRESS_EXPORT_PORT ?= 27018
DEVBOX_MONGO44_DBGATE_EXPORT_PORT ?= 27019
DEVBOX_MONGO44_NOSQLCLIENT_EXPORT_PORT ?= 27020

mongo4.4-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/4.4/compose.yml -p ${DEVBOX_MONGO44_PROJECT_NAME} up -d

mongo4.4-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/4.4/compose.yml -p ${DEVBOX_MONGO44_PROJECT_NAME} down

mongo4.4-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/4.4/compose.yml -p ${DEVBOX_MONGO44_PROJECT_NAME} ps

mongo4.4-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/4.4/compose.yml -p ${DEVBOX_MONGO44_PROJECT_NAME} logs -f

mongo4.4-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f mongo/4.4/compose.yml -p ${DEVBOX_MONGO44_PROJECT_NAME} down --volumes

mongo4.4-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f mongo/4.4/compose.yml -p ${DEVBOX_MONGO44_PROJECT_NAME}"

mongo4.4-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make mongo4.4-up		Start MongoDB 4.4 service and management tools"
	@echo "  make mongo4.4-down		Stop MongoDB 4.4 service and management tools"
	@echo "  make mongo4.4-status		Status from running services"
	@echo "  make mongo4.4-logs		Logs from running services"
	@echo "  make mongo4.4-purge		Delete all MongoDB 4.4 data"
	@echo "  make mongo4.4-info		Information about the services for use"
	@echo "  make mongo4.4-command		Print docker compose command"
	@echo "  make mongo4.4-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MONGO44_DB_EXPORT_PORT			Port to expose MongoDB 4.4 in docker for your environment"
	@echo "  DEVBOX_MONGO44_EXPRESS_EXPORT_PORT		Port to expose Mongo Express in docker for access in your browser"
	@echo "  DEVBOX_MONGO44_DBGATE_EXPORT_PORT		Port to expose DbGate in docker for access in your browser"
	@echo "  DEVBOX_MONGO44_NOSQLCLIENT_EXPORT_PORT	Port to expose Nosqlclient in docker for access in your browser"
	@echo

mongo4.4-info:
	@echo
	@echo "MongoDB 4.4 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MONGO44_DB_EXPORT_PORT}"
	@echo "  Mongo Express: 	http://127.0.0.1:${DEVBOX_MONGO44_EXPRESS_EXPORT_PORT}"
	@echo "  DbGate: 		http://127.0.0.1:${DEVBOX_MONGO44_DBGATE_EXPORT_PORT}"
	@echo "  Nosqlclient: 		http://127.0.0.1:${DEVBOX_MONGO44_NOSQLCLIENT_EXPORT_PORT}"
	@echo
