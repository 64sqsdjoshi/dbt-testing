{% set user = target.user %}
{% set vars = var(user) %}

{% set database = vars["database"]%}
{% set schema =  vars["raw_data_schema"]%}




select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from {{ database }}.{{ schema }}.orders