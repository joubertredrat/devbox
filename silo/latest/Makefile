DEVBOX_SILO_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}0xc

DEVBOX_SILO_API_EXPORT_PORT ?= 29000
DEVBOX_SILO_CONSOLE_EXPORT_PORT ?= 29001
DEVBOX_SILO_STORAGE_REGION ?= us-east-1
DEVBOX_SILO_CONSOLE_ROOT_USER ?= root
DEVBOX_SILO_CONSOLE_ROOT_PASSWORD ?= password

silo-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f silo/latest/compose.yml -p ${DEVBOX_SILO_PROJECT_NAME} up -d

silo-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f silo/latest/compose.yml -p ${DEVBOX_SILO_PROJECT_NAME} down

silo-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f silo/latest/compose.yml -p ${DEVBOX_SILO_PROJECT_NAME} ps

silo-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f silo/latest/compose.yml -p ${DEVBOX_SILO_PROJECT_NAME} logs -f

silo-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f silo/latest/compose.yml -p ${DEVBOX_SILO_PROJECT_NAME} down --volumes

silo-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f silo/latest/compose.yml -p ${DEVBOX_SILO_PROJECT_NAME}"

silo-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make silo-up			Start Silo latest service and management tools"
	@echo "  make silo-down		Stop Silo latest service and management tools"
	@echo "  make silo-status		Status from running services"
	@echo "  make silo-logs		Logs from running services"
	@echo "  make silo-purge		Delete all Silo latest data"
	@echo "  make silo-info		Information about the Silo latest services for use"
	@echo "  make silo-command		Print docker compose command"
	@echo "  make silo-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_SILO_API_EXPORT_PORT		Port to expose Silo API latest in docker for your environment"
	@echo "  DEVBOX_SILO_CONSOLE_EXPORT_PORT	Port to expose Silo console web latest in docker for your environment"
	@echo "  DEVBOX_SILO_STORAGE_REGION		Region to configure into Silo"
	@echo "  DEVBOX_SILO_CONSOLE_ROOT_USER		Root user to access console web into Silo"
	@echo "  DEVBOX_SILO_CONSOLE_ROOT_PASSWORD	Root password to access console web into Silo"
	@echo

silo-info:
	@echo
	@echo "Silo latest information"
	@echo
	@echo "  API: 				http://127.0.0.1:${DEVBOX_SILO_API_EXPORT_PORT}"
	@echo "  Console web: 			http://127.0.0.1:${DEVBOX_SILO_CONSOLE_EXPORT_PORT}"
	@echo "  Region: 			${DEVBOX_SILO_STORAGE_REGION}"
	@echo "  Root user and access key: 	${DEVBOX_SILO_CONSOLE_ROOT_USER}"
	@echo "  Root password and secret key:	${DEVBOX_SILO_CONSOLE_ROOT_PASSWORD}"
	@echo
