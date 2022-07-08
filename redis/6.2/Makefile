DEVBOX_REDIS62_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}k69

DEVBOX_REDIS62_DB_EXPORT_PORT ?= 16379
DEVBOX_REDIS62_PRA_EXPORT_PORT ?= 16380
DEVBOX_REDIS62_COMMANDER_EXPORT_PORT ?= 16381

redis6.2-up:
	${DOCKER_COMPOSE_CMD} -f redis/6.2/docker-compose.yml -p ${DEVBOX_REDIS62_PROJECT_NAME} up -d

redis6.2-down:
	${DOCKER_COMPOSE_CMD} -f redis/6.2/docker-compose.yml -p ${DEVBOX_REDIS62_PROJECT_NAME} down

redis6.2-status:
	${DOCKER_COMPOSE_CMD} -f redis/6.2/docker-compose.yml -p ${DEVBOX_REDIS62_PROJECT_NAME} ps

redis6.2-logs:
	${DOCKER_COMPOSE_CMD} -f redis/6.2/docker-compose.yml -p ${DEVBOX_REDIS62_PROJECT_NAME} logs -f

redis6.2-purge:
	${DOCKER_COMPOSE_CMD} -f redis/6.2/docker-compose.yml -p ${DEVBOX_REDIS62_PROJECT_NAME} down --volumes

redis6.2-command:
	@echo "${DOCKER_COMPOSE_CMD} -f redis/6.2/docker-compose.yml -p ${DEVBOX_REDIS62_PROJECT_NAME}"

redis6.2-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make redis6.2-up		Start Redis 6.2 service and management tools"
	@echo "  make redis6.2-down		Stop Redis 6.2 service and management tools"
	@echo "  make redis6.2-status		Status from running services"
	@echo "  make redis6.2-logs		Logs from running services"
	@echo "  make redis6.2-purge		Delete all Redis 6.2 data"
	@echo "  make redis6.2-info		Information about the services for use"
	@echo "  make redis6.2-command		Print docker compose command"
	@echo "  make redis6.2-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_REDIS62_DB_EXPORT_PORT			Port to expose Redis 6.2 in docker for your environment"
	@echo "  DEVBOX_REDIS62_PRA_EXPORT_PORT		Port to expose phpRedisAdmin in docker for access in your browser"
	@echo "  DEVBOX_REDIS62_COMMANDER_EXPORT_PORT		Port to expose Redis Commander in docker for access in your browser"
	@echo

redis6.2-info:
	@echo
	@echo "Redis 6.2 information"
	@echo
	@echo "  Host: 		0.0.0.0"
	@echo "  Port: 		${DEVBOX_REDIS62_DB_EXPORT_PORT}"
	@echo "  phpRedisAdmin: 	http://0.0.0.0:${DEVBOX_REDIS62_PRA_EXPORT_PORT}"
	@echo "  Redis Commander: 	http://0.0.0.0:${DEVBOX_REDIS62_COMMANDER_EXPORT_PORT}"
	@echo
