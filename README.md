# dbt-bq-playment
DBT + Bigquery

### Setup

```text
$> dbt deps

$> source .env

$> # create the external source tables

$> make load-external

$> make run

$> make snapshot
```


### Notes

* Datasets cannot have underscores, we need to use dashes!
* Required SA permissions
    * BigQuery Data Editor
    * BigQuery User