DEVBOX_REDIS72_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}ljk

DEVBOX_REDIS72_DB_EXPORT_PORT ?= 18379
DEVBOX_REDIS72_PRA_EXPORT_PORT ?= 18380
DEVBOX_REDIS72_COMMANDER_EXPORT_PORT ?= 18381
DEVBOX_REDIS72_REDISINSIGHT_EXPORT_PORT ?= 18382

redis7.2-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f redis/7.2/compose.yml -p ${DEVBOX_REDIS72_PROJECT_NAME} up -d

redis7.2-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f redis/7.2/compose.yml -p ${DEVBOX_REDIS72_PROJECT_NAME} down

redis7.2-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f redis/7.2/compose.yml -p ${DEVBOX_REDIS72_PROJECT_NAME} ps

redis7.2-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f redis/7.2/compose.yml -p ${DEVBOX_REDIS72_PROJECT_NAME} logs -f

redis7.2-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f redis/7.2/compose.yml -p ${DEVBOX_REDIS72_PROJECT_NAME} down --volumes

redis7.2-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f redis/7.2/compose.yml -p ${DEVBOX_REDIS72_PROJECT_NAME}"

redis7.2-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make redis7.2-up		Start Redis 7.2 service and management tools"
	@echo "  make redis7.2-down		Stop Redis 7.2 service and management tools"
	@echo "  make redis7.2-status		Status from running services"
	@echo "  make redis7.2-logs		Logs from running services"
	@echo "  make redis7.2-purge		Delete all Redis 7.2 data"
	@echo "  make redis7.2-info		Information about the services for use"
	@echo "  make redis7.2-command		Print docker compose command"
	@echo "  make redis7.2-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_REDIS72_DB_EXPORT_PORT			Port to expose Redis 7.2 in docker for your environment"
	@echo "  DEVBOX_REDIS72_PRA_EXPORT_PORT		Port to expose phpRedisAdmin in docker for access in your browser"
	@echo "  DEVBOX_REDIS72_COMMANDER_EXPORT_PORT		Port to expose Redis Commander in docker for access in your browser"
	@echo

redis7.2-info:
	@echo
	@echo "Redis 7.2 information"
	@echo
	@echo "  Host: 		127.0.0.1"
	@echo "  Port: 		${DEVBOX_REDIS72_DB_EXPORT_PORT}"
	@echo "  Connection URL: 	redis://127.0.0.1:${DEVBOX_REDIS72_DB_EXPORT_PORT}"
	@echo "  phpRedisAdmin: 	http://127.0.0.1:${DEVBOX_REDIS72_PRA_EXPORT_PORT}"
	@echo "  Redis Commander: 	http://127.0.0.1:${DEVBOX_REDIS72_COMMANDER_EXPORT_PORT}"
	@echo "  Redis Insight: 	http://127.0.0.1:${DEVBOX_REDIS72_REDISINSIGHT_EXPORT_PORT}"
	@echo
