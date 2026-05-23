{% set flag = 2 %}

SELECT * FROM {{ ref('bronze_listings') }}
{% if flag == 1 %}
WHERE ACCOMMODATES > 1
{% else %}
WHERE ACCOMMODATES = 1
{% endif %}