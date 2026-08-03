{{ config(materialized='view') }}

WITH source AS (

    SELECT *
    FROM {{ source('raw_source_dev_public', 'payments') }}

)

SELECT
    "payment_id",
    "order_id"
FROM source
