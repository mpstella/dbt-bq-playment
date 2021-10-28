.PHONY: load-external run snapshot debug refresh docs run-13 e2e

load-external:
	dbt run-operation stage_external_sources

run:
	dbt --warn-error --strict run

snapshot:
	dbt snapshot

debug:
	dbt debug

refresh:
	dbt run --full-refresh

docs:
	dbt docs generate
	dbt docs serve

e2e: load-external run snapshot
	echo "all"
