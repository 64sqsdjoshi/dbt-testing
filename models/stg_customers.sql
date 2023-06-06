{% set user = target.user %}
{% set vars = var(user) %}

{% set database = vars["database"]%}
{% set schema =  vars["raw_data_schema"]%}


select
    id as customer_id,
    first_name,
    last_name

from {{ database }}.{{ schema }}.customers