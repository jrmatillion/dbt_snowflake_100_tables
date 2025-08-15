{% macro get_env(var_name, default_val='') %}
    {% if var(var_name, none) is not none %}
        {{ var(var_name) }}
    {% else %}
        {{ default_val }}
    {% endif %}
{% endmacro %}
