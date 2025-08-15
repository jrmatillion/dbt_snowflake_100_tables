-- models/raw/table_080.sql
{{ config(materialized='view') }}
select
  id,
  created_at,
  updated_at,
  value
from { source('raw', 'table_080') }
