select 
    a.order_id
    , b.customer_id
    , a.order_date
    , b.first_name
    , b.last_name
    , c.amount
    , c.created
    , c.payment_method
from 
{{ ref('completed_orders') }} a
left join {{ ref('stg_jaffle_shop__customers') }} b on a.customer_id = b.customer_id
left join {{ ref('successful_payments') }} c  on a.order_id = c.order_id