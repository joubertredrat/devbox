DEVBOX_RABBITMQ310_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}uhs

DEVBOX_RABBITMQ310_BROKER_PORT ?= 15671
DEVBOX_RABBITMQ310_MANAGEMENT_PORT ?= 15672

rabbitmq3.10-up:
	${DOCKER_COMPOSE_CMD} -f rabbitmq/3.10/docker-compose.yml -p ${DEVBOX_RABBITMQ310_PROJECT_NAME} up -d

rabbitmq3.10-down:
	${DOCKER_COMPOSE_CMD} -f rabbitmq/3.10/docker-compose.yml -p ${DEVBOX_RABBITMQ310_PROJECT_NAME} down --volumes

rabbitmq3.10-status:
	${DOCKER_COMPOSE_CMD} -f rabbitmq/3.10/docker-compose.yml -p ${DEVBOX_RABBITMQ310_PROJECT_NAME} ps

rabbitmq3.10-logs:
	${DOCKER_COMPOSE_CMD} -f rabbitmq/3.10/docker-compose.yml -p ${DEVBOX_RABBITMQ310_PROJECT_NAME} logs -f

rabbitmq3.10-command:
	@echo "${DOCKER_COMPOSE_CMD} -f rabbitmq/3.10/docker-compose.yml -p ${DEVBOX_RABBITMQ310_PROJECT_NAME}"

rabbitmq3.10-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make rabbitmq3.10-up		Start RabbitMQ 3.10 service and management tools"
	@echo "  make rabbitmq3.10-down	Stop RabbitMQ 3.10 service and management tools"
	@echo "  make rabbitmq3.10-status	Status from running services"
	@echo "  make rabbitmq3.10-logs	Logs from running services"
	@echo "  make rabbitmq3.10-info	Information about the services for use"
	@echo "  make rabbitmq3.10-command	Print docker compose command"
	@echo "  make rabbitmq3.10-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_RABBITMQ310_BROKER_PORT	Port to expose RabbitMQ broker in docker for your environment"
	@echo "  DEVBOX_RABBITMQ310_MANAGEMENT_PORT	Port to expose RabbitMQ Management in docker for access in your browser"
	@echo

rabbitmq3.10-info:
	@echo
	@echo "RabbitMQ 3.10 information"
	@echo
	@echo "  Broker Host: 		127.0.0.1"
	@echo "  Broker Port: 		${DEVBOX_RABBITMQ310_BROKER_PORT}"
	@echo "  Management: 		http://127.0.0.1:${DEVBOX_RABBITMQ310_MANAGEMENT_PORT}"
	@echo "  Management user: 	guest"
	@echo "  Management password: 	guest"
	@echo
