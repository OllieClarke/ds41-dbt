with agg as(
select
 first_name
 , last_name
 , round(sum(amount),2) as total_amount
 , count(order_id) as total_orders
from {{ ref('orders_customers_and_payments') }}
group by customer_id, first_name, last_name
)
select 
rank() over (order by total_amount desc, total_orders desc) as customer_rank
, *
from agg