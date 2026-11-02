# PipeKeel dbt demo

A small dbt project that PipeKeel's workflow runs after loading shop orders into BigQuery:
`stg_orders` cleans the orders PipeKeel loads into `analytics.shop_orders`, and
`city_summary` sums them per city. PipeKeel's dbt step runs `dbt build` on its Runner, in your
own Google Cloud project, and keeps the docs and test results with each run.

The profile (`shop_analytics`) is written by PipeKeel at run time: BigQuery, signed in as your
environment's execution account. No keys in this repository.
