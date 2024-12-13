with 

source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (
--rename id and drop etl_loaded_at
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed
