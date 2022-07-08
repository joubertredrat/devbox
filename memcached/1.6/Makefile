DEVBOX_MEMCACHED16_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}2ya

DEVBOX_MEMCACHED16_CACHE_PORT ?= 21211
DEVBOX_MEMCACHED16_ADMIN_PORT ?= 21212

memcached1.6-up:
	${DOCKER_COMPOSE_CMD} -f memcached/1.6/docker-compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} up -d

memcached1.6-down:
	${DOCKER_COMPOSE_CMD} -f memcached/1.6/docker-compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} down

memcached1.6-status:
	${DOCKER_COMPOSE_CMD} -f memcached/1.6/docker-compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} ps

memcached1.6-logs:
	${DOCKER_COMPOSE_CMD} -f memcached/1.6/docker-compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} logs -f

memcached1.6-purge:
	${DOCKER_COMPOSE_CMD} -f memcached/1.6/docker-compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME} down --volumes

memcached1.6-command:
	@echo "${DOCKER_COMPOSE_CMD} -f memcached/1.6/docker-compose.yml -p ${DEVBOX_MEMCACHED16_PROJECT_NAME}"

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
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_MEMCACHED16_CACHE_PORT}"
	@echo "  Memcached admin: 	http://0.0.0.0:${DEVBOX_MEMCACHED16_ADMIN_PORT}"
	@echo
