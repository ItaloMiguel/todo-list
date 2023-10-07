build-prod:
	@bash utils/build-prod.sh

psql-prod:
	@bash utils/psql-prod.sh


run-prod: build-prod
	@bash utils/run-prod.sh