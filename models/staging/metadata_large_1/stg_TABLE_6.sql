{{ config(materialized='view') }}

WITH source AS (

    SELECT *
    FROM {{ source('raw_source', 'TABLE_6') }}

)

SELECT
    TABLE_6_ID,
    TABLE_5_ID,
    COLUMN_3,
    COLUMN_4,
    COLUMN_5,
    COLUMN_6,
    COLUMN_7,
    COLUMN_8,
    COLUMN_9,
    COLUMN_10,
    COLUMN_11,
    COLUMN_12,
    COLUMN_13,
    COLUMN_14,
    COLUMN_15,
    COLUMN_16,
    COLUMN_17,
    COLUMN_18,
    COLUMN_19,
    COLUMN_20,
    COLUMN_21,
    COLUMN_22,
    COLUMN_23,
    COLUMN_24,
    COLUMN_25
FROM source
