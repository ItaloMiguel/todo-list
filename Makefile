build-prod:
	@bash utils/command-prod.sh BUILD

psql-prod:
	@bash utils/psql-prod.sh

run-prod: build-prod
	@bash utils/command-prod.sh RUN

stop-prod:
	@bash utils/command-prod.sh STOP

chmod-execute:
	@bash chmod u+x app/*.sh
	@bash chmod u+x utils/*.sh

migrete:
	@bash utils/migrate.sh

collectstatic:
	@bash utils/collectstatic.sh