{{ config(materialized='view') }}

WITH source AS (

    SELECT *
    FROM {{ source('raw_source_dev_public', 'orders') }}

)

SELECT
    "order_id",
    "customer_id",
    "order_amount"
FROM source
