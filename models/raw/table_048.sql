-- models/raw/table_048.sql
{{ config(materialized='view') }}
select
  id,
  created_at,
  updated_at,
  value
from {{ source('raw', 'table_048') }}
