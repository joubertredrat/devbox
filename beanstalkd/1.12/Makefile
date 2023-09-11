DEVBOX_BEANSTALKD112_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}g1l

DEVBOX_BEANSTALKD112_BROKER_PORT ?= 21300
DEVBOX_BEANSTALKD112_BEANSTALK_CONSOLE_PORT ?= 21301

beanstalkd1.12-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f beanstalkd/1.12/compose.yml -p ${DEVBOX_BEANSTALKD112_PROJECT_NAME} up -d

beanstalkd1.12-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f beanstalkd/1.12/compose.yml -p ${DEVBOX_BEANSTALKD112_PROJECT_NAME} down

beanstalkd1.12-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f beanstalkd/1.12/compose.yml -p ${DEVBOX_BEANSTALKD112_PROJECT_NAME} ps

beanstalkd1.12-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f beanstalkd/1.12/compose.yml -p ${DEVBOX_BEANSTALKD112_PROJECT_NAME} logs -f

beanstalkd1.12-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f beanstalkd/1.12/compose.yml -p ${DEVBOX_BEANSTALKD112_PROJECT_NAME} down --volumes

beanstalkd1.12-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f beanstalkd/1.12/compose.yml -p ${DEVBOX_BEANSTALKD112_PROJECT_NAME}"

beanstalkd1.12-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make beanstalkd1.12-up	Start Beanstalkd 1.12 service and management tools"
	@echo "  make beanstalkd1.12-down	Stop Beanstalkd 1.12 service and management tools"
	@echo "  make beanstalkd1.12-status	Status from running services"
	@echo "  make beanstalkd1.12-logs	Logs from running services"
	@echo "  make beanstalkd1.12-purge	Delete all Beanstalkd 1.12 data"
	@echo "  make beanstalkd1.12-info	Information about the services for use"
	@echo "  make beanstalkd1.12-command	Print docker compose command"
	@echo "  make beanstalkd1.12-help	This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_BEANSTALKD112_BROKER_PORT		Port to expose Beanstalkd 1.12 in docker for your environment"
	@echo "  DEVBOX_BEANSTALKD112_BEANSTALK_CONSOLE_PORT	Port to expose Beanstalkd console in docker for access in your browser"

beanstalkd1.12-info:
	@echo
	@echo "Beanstalkd 1.12 information"
	@echo
	@echo "  Broker Host: 		127.0.0.1"
	@echo "  Broker Port: 		${DEVBOX_BEANSTALKD112_BROKER_PORT}"
	@echo "  Management: 		http://127.0.0.1:${DEVBOX_BEANSTALKD112_BEANSTALK_CONSOLE_PORT}"
	@echo
