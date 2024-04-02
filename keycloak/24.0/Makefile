DEVBOX_KEYCLOAK240_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}kc4

keycloak24.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/24.0/compose.yml -p ${DEVBOX_KEYCLOAK240_PROJECT_NAME} up -d

keycloak24.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/24.0/compose.yml -p ${DEVBOX_KEYCLOAK240_PROJECT_NAME} down

keycloak24.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/24.0/compose.yml -p ${DEVBOX_KEYCLOAK240_PROJECT_NAME} ps

keycloak24.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/24.0/compose.yml -p ${DEVBOX_KEYCLOAK240_PROJECT_NAME} logs -f

keycloak24.0-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f keycloak/24.0/compose.yml -p ${DEVBOX_KEYCLOAK240_PROJECT_NAME} down --volumes

keycloak24.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f keycloak/24.0/compose.yml -p ${DEVBOX_KEYCLOAK240_PROJECT_NAME}"
