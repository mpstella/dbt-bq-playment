{% snapshot orders_snapshot %}

{{
    config(
      target_schema=target.schema+'_src_jaffle_shop',
      unique_key='order_id',
      strategy='check',
      check_cols=['user_id', 'order_date','status']
    )
}}

select *
  from {{ ref('orders_vw')}}

{% endsnapshot %}