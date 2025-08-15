-- models/raw/table_055.sql
{{ config(materialized='view') }}
select
  id,
  created_at,
  updated_at,
  value
from { source('raw', 'table_055') }
