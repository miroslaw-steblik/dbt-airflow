--This will create a PREPPED_DATA view in the TRANSFORM schema in which it will perform an inner join on the CUSTOMER and COMBINED_BOOKINGS views from the steps above.

SELECT A.ID 
    , FIRST_NAME
    , LAST_NAME
    , birthdate
    , BOOKING_REFERENCE
    , HOTEL
    , BOOKING_DATE
    , COST
FROM {{ref('customer')}}  A
JOIN {{ref('combined_bookings')}} B
on A.ID = B.ID