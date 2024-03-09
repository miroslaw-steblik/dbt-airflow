--This will create a hotel_count_by_day view in the ANALYSIS schema in which we will count the number of hotel bookings by day.

SELECT
  BOOKING_DATE,
  HOTEL,
  COUNT(ID) as count_bookings
FROM {{ ref('prepped_data') }}
GROUP BY
  BOOKING_DATE,
  HOTEL