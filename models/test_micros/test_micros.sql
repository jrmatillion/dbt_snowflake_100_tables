{% set cols = get_columns('table_001') %}
SELECT {{ cols | join(', ') }} FROM {{ ref('table_001') }}

 