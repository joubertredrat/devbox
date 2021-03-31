mysql5.7-up:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox up -d

mysql5.7-down:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox down --rmi all

mysql5.7-status:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox ps

mysql5.7-logs:
	docker-compose -f mysql/5.7/docker-compose.yml -p devbox logs -f

postgres13.2-up:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox up -d

postgres13.2-down:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox down --rmi all

postgres13.2-status:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox ps

postgres13.2-logs:
	docker-compose -f postgres/13.2/docker-compose.yml -p devbox logs -f
