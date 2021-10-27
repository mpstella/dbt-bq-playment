### Links

* [Table Options](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#external_table_option_list)
* [External Tables](https://github.com/dbt-labs/dbt-external-tables)

---

### Load external
```text
$> dbt run-operation stage_external_sources

$> dbt run-operation stage_external_sources --vars "hive_batch_dt: xxx"
```