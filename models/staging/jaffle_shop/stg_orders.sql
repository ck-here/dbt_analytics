with orders as (
    select  user_id as customer_id,
            id as order_id,
            order_date,
            status
    from {{source('jaffle_shop','orders')}}
    )

select * from orders