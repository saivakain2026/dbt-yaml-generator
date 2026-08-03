{{ config(materialized='view') }}

WITH source AS (

    SELECT *
    FROM {{ source('raw_source_dev_public', 'products') }}

)

SELECT
    "product_id",
    "product_name"
FROM source
