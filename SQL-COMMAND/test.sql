-- DISPLAY LIST OF EMPLOYEES WITH ALL INFORMATION SORTED BY EMPLOYEE NAME
-- IN DESCENDING ORDER
SELECT * FROM `employeefile` ORDER BY empname DESC;

-- DISPLAY EMP CODE, EMP NAME AND BIRTHDATE WITH EMP NAME STARTING ON LETTER A
SELECT empcode, empname, birthdate FROM `employeefile` WHERE empname LIKE "A%";

-- DISPLAY EMP CODE, EMP NAME, BIRTHDAY WITH A CRUZ ON THEIR NAMES
SELECT empcode, empname, birthdate FROM `employeefile` WHERE empname LIKE "%Cruz%";

-- DISPLAY ALL EMPLOYEES WITH SALARY BRACKET FROM 19000 TO 20000
SELECT * FROM `employeefile` WHERE salary BETWEEN 19000 AND 20000;

-- DISPLAY ALL EMPLOYEES BORN ON YEAR 1999
SELECT * FROM `employeefile` WHERE birthdate LIKE "%1999%";

-- HOW MANY MALE AND FEMALE ON OUR EMPLOYEE LIST
SELECT gender, COUNT(*) as total_count FROM `employeefile` WHERE gender = "Female" OR gender = "Male" GROUP BY gender;

-- DISPLAY TOTAL SALARY PER STATUS
SELECT status, SUM(salary) as total_salary FROM `employeefile` WHERE status = "Married" OR status = "Single" GROUP BY status;

-- DISPLAY EMPLOYEE WITH HIGHEST SALARY
SELECT * FROM `employeefile` WHERE salary = (SELECT MAX(salary) FROM `employeefile`);

-- ADD 500 ON ALL MARRIED EMPLOYEES ON THEIR CURRENT SALARY
UPDATE `employeefile` SET salary = salary + 500 WHERE status = "Married";

-- ADD NEW SAMPLE EMPLOYEE USING SQL COMMAND
INSERT INTO employeefile(empcode, empname, birthdate, status, gender, salary) VALUES ("0007", "Diane Castillo", "1993-10-12", "Single", "Female", 6666);