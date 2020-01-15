dev_manager:
	cd manager
	docker-compose run --rm manager ash

console_manager:
	cd manager
	docker-compose run --rm manager bundle exec rails c

bundle_manager:
	docker-compose run --rm manager bundle

build_manager:
	cd manager
	docker-compose build

up_manager:
	cd manager
	docker-compose up -d

down_manager:
	cd manager
	docker-compose down

up: up_manager
down: down_manager
