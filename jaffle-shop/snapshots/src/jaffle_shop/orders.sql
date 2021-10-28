{% snapshot orders_snapshot %}

{{
    config(
      target_schema=target.schema+'_src_jaffle_shop',
      unique_key='order_id',
      strategy='check',
      check_cols=['customer_id', 'order_date','status']
    )
}}

select 
    order_id,
    customer_id,
    order_date,
    status,
    p_year,
    p_month,
    p_day
  from {{ ref('orders_vw')}}

{% endsnapshot %}