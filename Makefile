.PHONY: start

start:
	@if [ -n "$(shell docker ps -q)" ]; \
		then \
		 echo "Removing docker containers"; \
		 docker kill $(shell docker ps -q); \
	fi;
	docker-compose up -d
