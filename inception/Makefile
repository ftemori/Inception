NAME = inception
COMPOSE = docker-compose -f srcs/docker-compose.yaml

all: build up

build:
	$(COMPOSE) build

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

clean: down
	$(COMPOSE) down -v
	#docker system prune -af

re: down all

.PHONY: all build up down clean re 
