-- models/stage/stg_table_086.sql
{{ config(materialized='view') }}
select
  id,
  upper(value) as value_upper,
  try_to_timestamp_ntz(created_at) as created_at,
  try_to_timestamp_ntz(updated_at) as updated_at
from { ref('table_086') }
