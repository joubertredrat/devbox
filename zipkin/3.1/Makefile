DEVBOX_ZIPKIN31_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}zpk

DEVBOX_ZIPKIN31_TRACING_EXPORT_PORT ?= 19411
DEVBOX_ZIPKIN31_COLLECTOR_GRPC_PORT ?= 14317
DEVBOX_ZIPKIN31_COLLECTOR_HTTP_PORT ?= 14318

zipkin3.1-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f zipkin/3.1/compose.yml -p ${DEVBOX_ZIPKIN31_PROJECT_NAME} up -d

zipkin3.1-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f zipkin/3.1/compose.yml -p ${DEVBOX_ZIPKIN31_PROJECT_NAME} down

zipkin3.1-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f zipkin/3.1/compose.yml -p ${DEVBOX_ZIPKIN31_PROJECT_NAME} ps

zipkin3.1-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f zipkin/3.1/compose.yml -p ${DEVBOX_ZIPKIN31_PROJECT_NAME} logs -f

zipkin3.1-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f zipkin/3.1/compose.yml -p ${DEVBOX_ZIPKIN31_PROJECT_NAME}"

zipkin3.1-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make zipkin3.1-up		Start Zipkin 3.1 service and management tools"
	@echo "  make zipkin3.1-down		Stop Zipkin 3.1 service and management tools"
	@echo "  make zipkin3.1-status		Status from running services"
	@echo "  make zipkin3.1-logs		Logs from running services"
	@echo "  make zipkin3.1-info		Information about the services for use"
	@echo "  make zipkin3.1-command	Print docker compose command"
	@echo "  make zipkin3.1-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_ZIPKIN31_TRACING_EXPORT_PORT		Port to expose Zipkin 3.1 in docker for your environment"
	@echo "  DEVBOX_ZIPKIN31_COLLECTOR_GRPC_PORT		Port to expose OTEL Opentelemetry collector GRPC port"
	@echo "  DEVBOX_ZIPKIN31_COLLECTOR_HTTP_PORT		Port to expose OTEL Opentelemetry collector HTTP port"
	@echo

zipkin3.1-info:
	@echo
	@echo "Zipkin 3.1 information"
	@echo
	@echo "  Tracing: 		http://127.0.0.1:${DEVBOX_ZIPKIN31_TRACING_EXPORT_PORT}"
	@echo "  Collector GRPC host: 	127.0.0.1:${DEVBOX_ZIPKIN31_COLLECTOR_GRPC_PORT}"
	@echo "  Collector HTTP host: 	127.0.0.1:${DEVBOX_ZIPKIN31_COLLECTOR_HTTP_PORT}"
	@echo