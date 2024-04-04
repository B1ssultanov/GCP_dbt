-- Question 1
-- select COUNT(*) FROM {{ ref('fact_trips') }}
-- 61648442

-- Question 2

-- Question 3
-- SELECT COUNT(*) FROM {{ ref('stg_fhv_tripdata') }}
-- 43244696

-- Question 4
-- SELECT COUNT(*) FROM {{ ref('fact_fhv_trips') }}
-- 22998722



-- BigQuery

-- CREATE OR REPLACE EXTERNAL TABLE fiery-topic-414915.trips_data_all.fhv_trips_temp
-- OPTIONS (
--   FORMAT='CSV',
--   URIS=['gs://yedyge_bucket/Assignment_4/*.csv.gz']
-- );

-- CREATE OR REPLACE TABLE fiery-topic-414915.trips_data_all.fhv_tripdata
-- as (
--   SELECT * FROM `fiery-topic-414915.trips_data_all.fhv_trips_temp`
-- )

-- -- SELECT COUNT(*) FROM `bigquery-public-data.new_york_taxi_trips.tlc_fhv_trips_2017`;

-- -- Question 1
-- Select COUNT(*) FROM fiery-topic-414915.dbt_ybissultanov.fact_trips WHERE pickup_datetime BETWEEN '2019-01-01' AND '2020-12-30';

-- SELECT COUNT(*) FROM fiery-topic-414915.trips_data_all.fhv_tripdata
