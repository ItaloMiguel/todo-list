build-prod:
	@bash utils/command-prod.sh BUILD

psql-prod:
	@bash utils/psql-prod.sh

run-prod: build-prod
	@bash utils/command-prod.sh RUN

stop-prod:
	@bash utils/command-prod.sh STOP