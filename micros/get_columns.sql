{% macro get_columns(table_name) %}
    {% set relation = ref(table_name) %}
    {% set columns = adapter.get_columns_in_relation(relation) %}
    {{ return(columns | map(attribute='name') | list) }}
{% endmacro %}