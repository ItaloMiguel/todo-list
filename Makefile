COMMAND_BUILD=scripts/shell/command-prod.sh BUILD
COMMAND_PSQL=scripts/shell/psql-prod.sh
COMMAND_RUN=scripts/shell/command-prod.sh RUN
COMMAND_STOP=scripts/shell/command-prod.sh STOP

DJANGO_MIGRATE=scripts/shell/migrate.sh
DJANGO_COLLECTSTATIC=scripts/shell/collectstatic.sh

build:
	@bash $(COMMAND_BUILD)

psql:
	@bash $(COMMAND_PSQL)

start: build
	@bash $(COMMAND_RUN)

stop:
	@bash $(COMMAND_STOP)

restart: 
	@bash $(COMMAND_STOP)
	@bash $(COMMAND_RUN)

# Comandos de terminal

command-chmod:
	chmod u+x scripts/shell/*.sh

clean-docker:
	@bash docker volume prune -f
	@bash docker network prune -f
	@bash docker container prune -f
	@bash docker image prune -f

# Comandos do django

django_migrate:
	@bash $(DJANGO_MIGRATE)

django_collectstatic:
	@bash $(DJANGO_COLLECTSTATIC)



