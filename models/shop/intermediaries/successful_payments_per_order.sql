select
    order_id
    , sum(case when status='success' then amount end) as amount
from {{ ref('stg_stripe__payments') }}
group by order_id