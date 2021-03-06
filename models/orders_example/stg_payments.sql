with "source" as (
    select * from {{ source('my_source', 'payments') }}

),

"renamed" as (

    select
        "id" as "payment_id",
        "order_id",
        "payment_method",
        "amount"

    from "source"

)

select * from "renamed"
