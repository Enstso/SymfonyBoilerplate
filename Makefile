# Nom du projet
symfony = tutorial_symfony
mysql = tutorial_db_symfony
pma =tutorial_phpmyadmin
DC=docker-compose


run: 
	$(DC) up -d

run_attach: 
	$(DC) up

stop:
	$(DC) down

build:
	$(DC) build

shell_symfony:
	docker exec -it $(symfony) bash


shell_mysql:
	docker exec -it $(mysql) bash
	
logs_mysql:
	docker logs $(mysql)

logs_symfony:
	docker logs $(symfony)

logs_pma:
	docker logs $(pma)

errors_pma:
	docker logs $(pma) | grep -i error

errors_symfony:
	docker logs $(symfony) | grep -i error

errors_mysql:
	docker logs $(mysql) | grep -i error

ps:
	$(DC) ps | grep "tutorial"

