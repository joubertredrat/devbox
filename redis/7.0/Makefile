DEVBOX_REDIS70_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}m5k

DEVBOX_REDIS70_DB_EXPORT_PORT ?= 17379
DEVBOX_REDIS70_PRA_EXPORT_PORT ?= 17380
DEVBOX_REDIS70_COMMANDER_EXPORT_PORT ?= 17381

redis7.0-up:
	${DOCKER_COMPOSE_CMD} -f redis/7.0/docker-compose.yml -p ${DEVBOX_REDIS70_PROJECT_NAME} up -d

redis7.0-down:
	${DOCKER_COMPOSE_CMD} -f redis/7.0/docker-compose.yml -p ${DEVBOX_REDIS70_PROJECT_NAME} down

redis7.0-status:
	${DOCKER_COMPOSE_CMD} -f redis/7.0/docker-compose.yml -p ${DEVBOX_REDIS70_PROJECT_NAME} ps

redis7.0-logs:
	${DOCKER_COMPOSE_CMD} -f redis/7.0/docker-compose.yml -p ${DEVBOX_REDIS70_PROJECT_NAME} logs -f

redis7.0-purge:
	${DOCKER_COMPOSE_CMD} -f redis/7.0/docker-compose.yml -p ${DEVBOX_REDIS70_PROJECT_NAME} down --volumes

redis7.0-command:
	@echo "${DOCKER_COMPOSE_CMD} -f redis/7.0/docker-compose.yml -p ${DEVBOX_REDIS70_PROJECT_NAME}"

redis7.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make redis7.0-up		Start Redis 7.0 service and management tools"
	@echo "  make redis7.0-down		Stop Redis 7.0 service and management tools"
	@echo "  make redis7.0-status		Status from running services"
	@echo "  make redis7.0-logs		Logs from running services"
	@echo "  make redis7.0-purge		Delete all Redis 7.0 data"
	@echo "  make redis7.0-info		Information about the services for use"
	@echo "  make redis7.0-command		Print docker compose command"
	@echo "  make redis7.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_REDIS70_DB_EXPORT_PORT			Port to expose Redis 7.0 in docker for your environment"
	@echo "  DEVBOX_REDIS70_PRA_EXPORT_PORT		Port to expose phpRedisAdmin in docker for access in your browser"
	@echo "  DEVBOX_REDIS70_COMMANDER_EXPORT_PORT		Port to expose Redis Commander in docker for access in your browser"
	@echo

redis7.0-info:
	@echo
	@echo "Redis 7.0 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_REDIS70_DB_EXPORT_PORT}"
	@echo "  phpRedisAdmin: 	http://127.0.0.1:${DEVBOX_REDIS70_PRA_EXPORT_PORT}"
	@echo "  Redis Commander: 	http://127.0.0.1:${DEVBOX_REDIS70_COMMANDER_EXPORT_PORT}"
	@echo
