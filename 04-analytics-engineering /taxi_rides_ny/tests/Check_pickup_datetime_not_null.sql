select pickup_datetime from {{ ref('stg_fhv_tripdata') }} where pickup_datetime IS NULL