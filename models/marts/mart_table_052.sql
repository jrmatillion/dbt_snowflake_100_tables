-- models/marts/mart_table_052.sql
{{ config(materialized='table') }}
select
  count(*) as row_count,
  min(created_at) as first_created_at,
  max(created_at) as last_created_at
from {{ref('stg_table_052') }}
