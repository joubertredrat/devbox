DEVBOX_MINIO_PROJECT_NAME = ${DEVBOX_PROJECT_PREFIX}0xc

DEVBOX_MINIO_API_EXPORT_PORT ?= 29000
DEVBOX_MINIO_CONSOLE_EXPORT_PORT ?= 29001
DEVBOX_MINIO_STORAGE_REGION ?= us-east-1
DEVBOX_MINIO_CONSOLE_ROOT_USER ?= root
DEVBOX_MINIO_CONSOLE_ROOT_PASSWORD ?= password

minio-up: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f minio/latest/compose.yml -p ${DEVBOX_MINIO_PROJECT_NAME} up -d

minio-down: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f minio/latest/compose.yml -p ${DEVBOX_MINIO_PROJECT_NAME} down

minio-status: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f minio/latest/compose.yml -p ${DEVBOX_MINIO_PROJECT_NAME} ps

minio-logs: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f minio/latest/compose.yml -p ${DEVBOX_MINIO_PROJECT_NAME} logs -f

minio-purge: compose-cmd ;
	${DEVBOX_COMPOSE_CMD} -f minio/latest/compose.yml -p ${DEVBOX_MINIO_PROJECT_NAME} down --volumes

minio-command: compose-cmd ;
	@echo "${DEVBOX_COMPOSE_CMD} -f minio/latest/compose.yml -p ${DEVBOX_MINIO_PROJECT_NAME}"

minio-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make minio-up			Start MinIO latest service and management tools"
	@echo "  make minio-down		Stop MinIO latest service and management tools"
	@echo "  make minio-status		Status from running services"
	@echo "  make minio-logs		Logs from running services"
	@echo "  make minio-purge		Delete all MinIO latest data"
	@echo "  make minio-info		Information about the services for use"
	@echo "  make minio-command		Print docker compose command"
	@echo "  make minio-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_MINIO_API_EXPORT_PORT		Port to expose MinIO API latest in docker for your environment"
	@echo "  DEVBOX_MINIO_CONSOLE_EXPORT_PORT	Port to expose MinIO console web latest in docker for your environment"
	@echo "  DEVBOX_MINIO_STORAGE_REGION		Region to configure into MinIO"
	@echo "  DEVBOX_MINIO_CONSOLE_ROOT_USER	Root user to access console web into MinIO"
	@echo "  DEVBOX_MINIO_CONSOLE_ROOT_PASSWORD	Root password to access console web into MinIO"
	@echo

minio-info:
	@echo
	@echo "MinIO latest information"
	@echo
	@echo "  API: 				http://127.0.0.1:${DEVBOX_MINIO_API_EXPORT_PORT}"
	@echo "  Console web: 			http://127.0.0.1:${DEVBOX_MINIO_CONSOLE_EXPORT_PORT}"
	@echo "  Region: 			${DEVBOX_MINIO_STORAGE_REGION}"
	@echo "  Root user and access key: 	${DEVBOX_MINIO_CONSOLE_ROOT_USER}"
	@echo "  Root password and secret key:	${DEVBOX_MINIO_CONSOLE_ROOT_PASSWORD}"
	@echo
