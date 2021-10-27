select
    id as order_id,
    user_id as customer_id,
    order_date,
    status,
    p_year,
    p_month,
    p_day
from {{ source('raw_jaffle_shop', 'orders')}}
where p_year = {{ var('P_YEAR') }}
  and p_month = {{ var('P_MONTH') }}
  and p_day = {{ var('P_DAY') }}