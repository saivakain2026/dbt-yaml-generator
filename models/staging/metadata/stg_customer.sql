{{ config(materialized='view') }}

WITH source AS (

    SELECT *
    FROM {{ source('raw_source_dev_public', 'customer') }}

)

SELECT
    "customer_id",
    "customer_name",
    "email"
FROM source
