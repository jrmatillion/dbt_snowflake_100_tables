--{% set cols = get_columns('table_001') %}
--SELECT {{ cols | join(', ') }} FROM {{ ref('table_001') }}

SELECT '{{ get_env("run_date", "2025-01-01") }}' AS run_date


 