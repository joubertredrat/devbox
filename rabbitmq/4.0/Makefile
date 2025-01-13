DEVBOX_RABBITMQ40_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}uhs

DEVBOX_RABBITMQ40_BROKER_PORT ?= 16671
DEVBOX_RABBITMQ40_MANAGEMENT_PORT ?= 16672

rabbitmq4.0-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f rabbitmq/4.0/compose.yml -p ${DEVBOX_RABBITMQ40_PROJECT_NAME} up -d

rabbitmq4.0-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f rabbitmq/4.0/compose.yml -p ${DEVBOX_RABBITMQ40_PROJECT_NAME} down --volumes

rabbitmq4.0-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f rabbitmq/4.0/compose.yml -p ${DEVBOX_RABBITMQ40_PROJECT_NAME} ps

rabbitmq4.0-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f rabbitmq/4.0/compose.yml -p ${DEVBOX_RABBITMQ40_PROJECT_NAME} logs -f

rabbitmq4.0-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f rabbitmq/4.0/compose.yml -p ${DEVBOX_RABBITMQ40_PROJECT_NAME}"

rabbitmq4.0-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make rabbitmq4.0-up		Start RabbitMQ 4.0 service and management tools"
	@echo "  make rabbitmq4.0-down		Stop RabbitMQ 4.0 service and management tools"
	@echo "  make rabbitmq4.0-status	Status from running services"
	@echo "  make rabbitmq4.0-logs		Logs from running services"
	@echo "  make rabbitmq4.0-info		Information about the services for use"
	@echo "  make rabbitmq4.0-command	Print docker compose command"
	@echo "  make rabbitmq4.0-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_RABBITMQ40_BROKER_PORT		Port to expose RabbitMQ broker in docker for your environment"
	@echo "  DEVBOX_RABBITMQ40_MANAGEMENT_PORT	Port to expose RabbitMQ Management in docker for access in your browser"
	@echo

rabbitmq4.0-info:
	@echo
	@echo "RabbitMQ 4.0 information"
	@echo
	@echo "  Broker Host: 		127.0.0.1"
	@echo "  Broker Port: 		${DEVBOX_RABBITMQ40_BROKER_PORT}"
	@echo "  Management: 		http://127.0.0.1:${DEVBOX_RABBITMQ40_MANAGEMENT_PORT}"
	@echo "  Management user: 	guest"
	@echo "  Management password: 	guest"
	@echo
