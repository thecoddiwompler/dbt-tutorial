{{ config(materialized='table') }}

SELECT
    *
FROM
    jaffle_shop.raw_customers
WHERE
    id > 65
    AND id < 87