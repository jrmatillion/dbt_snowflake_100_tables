{% macro safe_cast(column_name, target_type) %}
    CASE 
        WHEN TYPEOF({{ column_name }}) != '{{ target_type }}' 
        THEN TRY_CAST({{ column_name }} AS {{ target_type }})
        ELSE {{ column_name }}
    END
{% endmacro %}
