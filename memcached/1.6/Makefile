DEVBOX_MEMCACHED16_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}2ya

DEVBOX_MEMCACHED16_CACHE_PORT ?= 21211
DEVBOX_MEMCACHED16_ADMIN_PORT ?= 21212

memcached1.6-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f memcached/1.6/compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} up -d

memcached1.6-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f memcached/1.6/compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} down

memcached1.6-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f memcached/1.6/compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} ps

memcached1.6-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f memcached/1.6/compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} logs -f

memcached1.6-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f memcached/1.6/compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} down --volumes

memcached1.6-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f memcached/1.6/compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME}"

memcached1.6-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make memcached1.6-up		Start Memcached 1.6 service and management tools"
	@echo "  make memcached1.6-down	Stop Memcached 1.6 service and management tools"
	@echo "  make memcached1.6-status	Status from running services"
	@echo "  make memcached1.6-logs	Logs from running services"
	@echo "  make memcached1.6-purge	Delete all Memcached 1.6 data"
	@echo "  make memcached1.6-info	Information about the services for use"
	@echo "  make memcached1.6-command	Print docker compose command"
	@echo "  make memcached1.6-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MEMCACHED16_CACHE_PORT		Port to expose Memcached 1.6 in docker for your environment"
	@echo "  DEVBOX_MEMCACHED16_ADMIN_PORT		Port to expose Memcached admin in docker for access in your browser"
	@echo

memcached1.6-info:
	@echo
	@echo "Memcached 1.6 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_MEMCACHED16_CACHE_PORT}"
	@echo "  Memcached admin: 	http://127.0.0.1:${DEVBOX_MEMCACHED16_ADMIN_PORT}"
	@echo
