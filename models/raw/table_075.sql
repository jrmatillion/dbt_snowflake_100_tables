-- models/raw/table_075.sql
{{ config(materialized='view') }}
select
  id,
  created_at,
  updated_at,
  value
from { source('raw', 'table_075') }
