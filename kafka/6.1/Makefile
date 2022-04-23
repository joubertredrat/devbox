DEVBOX_KAFKA61_ZOOKEEPER_EXPORT_PORT ?= 22181
DEVBOX_KAFKA61_KAFROP_EXPORT_PORT ?= 29092
DEVBOX_KAFKA61_KAFKAUI_EXPORT_PORT ?= 29093
DEVBOX_KAFKA61_KOWL_EXPORT_PORT ?= 29094

kafka6.1-up:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} up -d

kafka6.1-down:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} down --volumes

kafka6.1-status:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} ps

kafka6.1-logs:
	docker-compose -f kafka/6.1/docker-compose.yml -p ${DEVBOX_PROJECT_NAME} logs -f

kafka6.1-help:
	@echo
	@echo "Commands:"
	@echo
	@echo "  make kafka6.1-up		Start Kafka 6.1 service and management tools"
	@echo "  make kafka6.1-down		Stop Kafka 6.1 service and management tools"
	@echo "  make kafka6.1-status		Status from running services"
	@echo "  make kafka6.1-logs		Logs from running services"
	@echo "  make kafka6.1-info		Information about the services for use"
	@echo "  make kafka6.1-help		This help :)"
	@echo
	@echo "Available configurable environment variables:"
	@echo
	@echo "  DEVBOX_KAFKA61_ZOOKEEPER_EXPORT_PORT		Port to expose Zookeeper in docker for your environment"
	@echo "  DEVBOX_KAFKA61_KAFROP_EXPORT_PORT		Port to expose Kafdrop in docker for access in your browser"
	@echo "  DEVBOX_KAFKA61_KAFKAUI_EXPORT_PORT		Port to expose Kafka UI in docker for access in your browser"
	@echo "  DEVBOX_KAFKA61_KOWL_EXPORT_PORT		Port to expose Kafka UI in docker for access in your browser"
	@echo

kafka6.1-info:
	@echo
	@echo "Kafka 6.1 information"
	@echo
	@echo "  Brokers Host: 	0.0.0.0"
	@echo "  Broker 1 Port: 	9092"
	@echo "  Broker 2 Port: 	9093"
	@echo "  Broker 3 Port: 	9094"
	@echo "  Zookeeper Port: 	${DEVBOX_KAFKA61_ZOOKEEPER_EXPORT_PORT}"
	@echo "  Kafdrop: 		http://0.0.0.0:${DEVBOX_KAFKA61_KAFROP_EXPORT_PORT}"
	@echo "  Kafka UI: 		http://0.0.0.0:${DEVBOX_KAFKA61_KAFKAUI_EXPORT_PORT}"
	@echo "  Kowl: 		http://0.0.0.0:${DEVBOX_KAFKA61_KOWL_EXPORT_PORT}"
	@echo
