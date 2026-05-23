{% set congigs =[
    {
         "table": "AIRBNB.SILVER.SILVER_BOOKINGS",
         "column":"silver_bookings.*",
         "alias": "silver_bookings"
    },
    {
         "table": "AIRBNB.SILVER.SILVER_LISTINGS",
         "column":"SILVER_LISTINGS.HOST_ID, SILVER_LISTINGS.PROPERTY_TYPE,SILVER_LISTINGS.ROOM_TYPE,SILVER_LISTINGS.CITY, SILVER_LISTINGS.COUNTRY,SILVER_LISTINGS.ACCOMMODATES,SILVER_LISTINGS.BEDROOMS,SILVER_LISTINGS.BATHROOMS,SILVER_LISTINGS.PRICE_PER_NIGHT,SILVER_LISTINGS.PRICE_CATEGORY, SILVER_LISTINGS.CREATED_AT AS LISTING_CREATED_AT",
         "alias": "silver_listings",
         "join_condition": "silver_bookings.listing_id = silver_listings.listing_id "
    },
    {
         "table": "AIRBNB.SILVER.SILVER_HOSTS",
         "column":"SILVER_HOSTS.HOST_NAME, SILVER_HOSTS.HOST_SINCE, SILVER_HOSTS.IS_SUPERHOST, SILVER_HOSTS.RESPONSE_RATE,SILVER_HOSTS.RESPONSE_RATE_QUALITY, SILVER_HOSTS.CREATED_AT AS HOST_CREATED_AT",
         "alias": "silver_hosts",
         "join_condition": "silver_listings.host_id = silver_hosts.host_id "
    }
]

%}

SELECT
  {% for config in congigs %}
    {{ config.column }}{% if not loop.last %},{% endif %}
  {% endfor %}
FROM
  {% for config in congigs %}
  {% if loop.first %}
  {{ config.table }} AS {{ config.alias }}
  {% else %}
        LEFT JOIN {{ config.table }} AS {{ config.alias }} ON {{ config.join_condition }}
  {% endif %}
  {% endfor %}    