.PHONY: load-external run snapshot debug refresh docs run-13 e2e

load-external:
	dbt run-operation stage_external_sources

run-13:
	dbt --warn-error --strict run --vars '{"P_YEAR": "2020", "P_MONTH": "02", "P_DAY": "13"}'

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

e2e: load-external run-13 snapshot
	echo "all"
