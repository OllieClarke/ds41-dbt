select
    order_id
    , amount
    , created
    , payment_method
from {{ ref('stg_stripe__payments') }}
where status = 'success'