{{ config(materialized='table') }}

with fhv as (
    select *, 
        'Fhv' as service_type
    from {{ ref('stg_fhv_tripdata') }}
), 
dim_zones as (
    select * from {{ ref('dim_zones') }}
    where borough != 'Unknown'
)
select
    pickup_zone.borough as pickup_borough, 
    pickup_zone.zone as pickup_zone, 
    dropoff_zone.borough as dropoff_borough, 
    dropoff_zone.zone as dropoff_zone, 
    fhv.dispatching_base_num,
    fhv.service_type,
    fhv.pickup_locationid,
    fhv.dropoff_locationid,
    fhv.pickup_datetime,
    fhv.dropoff_datetime,
    fhv.sr_flag
from fhv
inner join dim_zones as pickup_zone
on fhv.pickup_locationid = pickup_zone.locationid
inner join dim_zones as dropoff_zone
on fhv.dropoff_locationid = dropoff_zone.locationid