COMMAND_BUILD=utils/command-prod.sh BUILD
COMMAND_PSQL=utils/psql-prod.sh
COMMAND_RUN=utils/command-prod.sh RUN
COMMAND_STOP=utils/command-prod.sh STOP

DJANGO_MIGRATE=utils/migrate.sh
DJANGO_COLLECTSTATIC=utils/collectstatic.sh

build:
	@bash $(COMMAND_BUILD)

psql:
	@bash $(COMMAND_PSQL)

start: $(COMMAND_BUILD)
	@bash $(COMMAND_RUN)

stop:
	@bash $(COMMAND_STOP)

restart: 
	@bash $(COMMAND_STOP)
	@bash $(COMMAND_RUN)

# Comandos de terminal

chmod:
	@bash chmod u+x app/*.sh
	@bash chmod u+x utils/*.sh

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



