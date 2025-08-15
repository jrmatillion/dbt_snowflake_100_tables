-- models/stage/stg_table_001.sql
{{ config(materialized='view') }}
select
  id,
  upper(value) as value_upper,
  created_at,
  updated_at
from {{ref('table_001') }}
