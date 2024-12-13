select
    order_id
    , customer_id
    , order_date
from {{ ref('stg_jaffle_shop__orders') }}
where status = 'completed'