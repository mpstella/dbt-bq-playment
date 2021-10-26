# dbt-bq-playment
DBT + Bigquery

```text
cat ~/.dbt/profiles.yml 
jaffle_shop:
  outputs:

    dev:
      type: bigquery
      method: service-account
      project: mtdg-espv2-playpen
      keyfile: /workspaces/bq-testing/credentials.json 
      dataset: dbt_mps
      threads: 1
      timeout_seconds: 300
      location: australia-southeast1
      priority: interactive
      retries: 1

    prod:
      type: bigquery
      method: service-account
      project: [GCP project id]
      dataset: [the name of your dbt dataset]
      threads: [1 or more]
      keyfile: [/path/to/bigquery/keyfile.json]
      timeout_seconds: 300
      priority: interactive
      retries: 1

  target: dev
```