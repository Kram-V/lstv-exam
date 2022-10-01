
-- FOR INSERTING VALUE ON SALESFILE1 TABLE BASE ON CUSTOMER FILE TABLE
UPDATE salesfile1
SET
cusdsc = (CASE cuscde

            WHEN (SELECT cuscde FROM customerfile WHERE cusdsc = "CUSTOMER1") THEN "CUSTOMER1"
            WHEN (SELECT cuscde FROM customerfile WHERE cusdsc = "CUSTOMER2") THEN "CUSTOMER2"
            WHEN (SELECT cuscde FROM customerfile WHERE cusdsc = "CUSTOMER3") THEN "CUSTOMER3"
            WHEN (SELECT cuscde FROM customerfile WHERE cusdsc = "CUSTOMER4") THEN "CUSTOMER4"
            WHEN (SELECT cuscde FROM customerfile WHERE cusdsc = "CUSTOMER5") THEN "CUSTOMER5"

          END)