include .env

.DEFAULT_GOAL=build

network:
	@docker network inspect $(DOCKER_NETWORK_NAME) >/dev/null 2>&1 || docker network create $(DOCKER_NETWORK_NAME)

volumes:
	@docker volume inspect $(DATA_VOLUME_HOST) >/dev/null 2>&1 || docker volume create --name $(DATA_VOLUME_HOST)
	@docker volume inspect $(DB_VOLUME_HOST) >/dev/null 2>&1 || docker volume create --name $(DB_VOLUME_HOST)

clear_data:
	rm -rf ./mysql/mysql_data
	rm -rf ./phpmyadmin/sessions

build_app:
	docker build --rm -t local/centos7-base -f app/Dockerfile-centos7-base app

composer:
	docker build --rm -t local/c7-composer -f app/Dockerfile-composer app
	docker run -v `pwd`/app/cakephp-app:/root/cakephp-app local/c7-composer

build:
	docker-compose build
