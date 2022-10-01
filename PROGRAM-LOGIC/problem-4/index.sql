UPDATE `table`
SET `trndte` = IF( `cremon` = 1 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 1)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 1), 
IF((SELECT datetyp FROM `table` WHERE cremon = 1) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 1), "-", "01", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 1), "-", "01", "-", "01")) , "")
WHERE cremon = 1;

UPDATE `table`
SET `trndte` = IF( `cremon` = 2 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 2)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 2), 
IF((SELECT datetyp FROM `table` WHERE cremon = 2) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 2), "-", "02", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 2), "-", "02", "-", "01")) , "")
WHERE cremon = 2;

UPDATE `table`
SET `trndte` = IF( `cremon` = 3 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 3)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 3), 
IF((SELECT datetyp FROM `table` WHERE cremon = 3) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 3), "-", "03", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 3), "-", "03", "-", "01")) , "")
WHERE cremon = 3;

UPDATE `table`
SET `trndte` = IF( `cremon` = 4 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 4)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 4), 
IF((SELECT datetyp FROM `table` WHERE cremon = 4) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 4), "-", "04", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 4), "-", "04", "-", "01")) , "")
WHERE cremon = 4;

UPDATE `table`
SET `trndte` = IF( `cremon` = 5 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 5)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 5), 
IF((SELECT datetyp FROM `table` WHERE cremon = 5) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 5), "-", "05", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 5), "-", "05", "-", "01")) , "")
WHERE cremon = 5;

UPDATE `table`
SET `trndte` = IF( `cremon` = 6 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 6)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 6), 
IF((SELECT datetyp FROM `table` WHERE cremon = 6) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 6), "-", "06", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 6), "-", "06", "-", "01")) , "")
WHERE cremon = 6;

UPDATE `table`
SET `trndte` = IF( `cremon` = 7 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 7)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 7), 
IF((SELECT datetyp FROM `table` WHERE cremon = 7) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 7), "-", "07", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 7), "-", "07", "-", "01")) , "")
WHERE cremon = 7;

UPDATE `table`
SET `trndte` = IF( `cremon` = 8 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 8)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 8), 
IF((SELECT datetyp FROM `table` WHERE cremon = 8) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 8), "-", "08", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 8), "-", "08", "-", "01")) , "")
WHERE cremon = 8;

UPDATE `table`
SET `trndte` = IF( `cremon` = 9 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon = 9)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon = 9), 
IF((SELECT datetyp FROM `table` WHERE cremon = 9) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon = 9), "-", "09", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon = 9), "-", "09", "-", "01")) , "")
WHERE cremon = 9;

UPDATE `table`
SET `trndte` = IF( `cremon` =10 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon =10)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon =10), 
IF((SELECT datetyp FROM `table` WHERE cremon =10) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon =10), "-", "10", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon =10), "-", "10", "-", "01")) , "")
WHERE cremon =10;

UPDATE `table`
SET `trndte` = IF( `cremon` =11 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon =11)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon =11), 
IF((SELECT datetyp FROM `table` WHERE cremon =11) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon =11), "-", "11", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon =11), "-", "11", "-", "01")) , "")
WHERE cremon =11;

UPDATE `table`
SET `trndte` = IF( `cremon` =12 AND `creyer` = (SELECT creyer FROM `table` WHERE cremon =12)
AND `datetyp` = (SELECT datetyp FROM `table` WHERE cremon =12), 
IF((SELECT datetyp FROM `table` WHERE cremon =12) = "L", (SELECT LAST_DAY(CONCAT((SELECT creyer FROM `table` WHERE cremon =12), "-", "12", "-", "11"))),
CONCAT((SELECT creyer FROM `table` WHERE cremon =12), "-", "12", "-", "01")) , "")
WHERE cremon =12;






