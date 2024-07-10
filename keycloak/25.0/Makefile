DEVBOX_KEYCLOAK250_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}kc5

DEVBOX_KEYCLOAK250_IDP_ADMIN_USERNAME ?= admin
DEVBOX_KEYCLOAK250_IDP_ADMIN_PASSWORD ?= password
DEVBOX_KEYCLOAK250_IDP_EXPORT_PORT ?= 19977
DEVBOX_KEYCLOAK250_CLOUDBEAVER_EXPORT_PORT ?= 19978

keycloak25.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/25.0/compose.yml -p ${DEVBOX_KEYCLOAK250_PROJECT_NAME} up -d

keycloak25.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/25.0/compose.yml -p ${DEVBOX_KEYCLOAK250_PROJECT_NAME} down

keycloak25.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/25.0/compose.yml -p ${DEVBOX_KEYCLOAK250_PROJECT_NAME} ps

keycloak25.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/25.0/compose.yml -p ${DEVBOX_KEYCLOAK250_PROJECT_NAME} logs -f

keycloak25.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/25.0/compose.yml -p ${DEVBOX_KEYCLOAK250_PROJECT_NAME} down --volumes

keycloak25.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f keycloak/25.0/compose.yml -p ${DEVBOX_KEYCLOAK250_PROJECT_NAME}"

keycloak25.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make keycloak25.0-up		Start Keycloak 25.0 service and management tools"
	@echo "  make keycloak25.0-down	Stop Keycloak 25.0 service and management tools"
	@echo "  make keycloak25.0-status	Status from running services"
	@echo "  make keycloak25.0-logs	Logs from running services"
	@echo "  make keycloak25.0-purge	Delete all Keycloak 25.0 data"
	@echo "  make keycloak25.0-info	Information about the services for use"
	@echo "  make keycloak25.0-command	Print docker compose command"
	@echo "  make keycloak25.0-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_KEYCLOAK250_IDP_ADMIN_USERNAME		Default Keycloak admin username"
	@echo "  DEVBOX_KEYCLOAK250_IDP_ADMIN_PASSWORD		Default Keycloak ${DEVBOX_KEYCLOAK250_IDP_ADMIN_USERNAME} password"
	@echo "  DEVBOX_KEYCLOAK250_IDP_EXPORT_PORT		Port to expose Keycloak in docker for access in your browser"
	@echo "  DEVBOX_KEYCLOAK250_CLOUDBEAVER_EXPORT_PORT	Port to expose Cloudbeaver in docker for access in your browser"
	@echo

keycloak25.0-info:
	@echo
	@echo "Keycloak 25.0 information"
	@echo
	@echo "  Keycloak: 			http://127.0.0.1:${DEVBOX_KEYCLOAK250_IDP_EXPORT_PORT}"
	@echo "  Keycloak admin username: 	${DEVBOX_KEYCLOAK250_IDP_ADMIN_USERNAME}"
	@echo "  Keycloak admin password: 	${DEVBOX_KEYCLOAK250_IDP_ADMIN_PASSWORD}"
	@echo "  Cloudbeaver: 			http://127.0.0.1:${DEVBOX_KEYCLOAK250_CLOUDBEAVER_EXPORT_PORT}"
	@echo "  Cloudbeaver username: 	cbadmin"
	@echo "  Cloudbeaver password: 	password"
	@echo
