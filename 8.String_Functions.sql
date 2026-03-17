 -- String Functions 
 
 SELECT LENGTH('skyfall');
 
 SELECT first_name, LENGTH(first_name)
 FROM employee_demographics
 ORDER BY 2;
 
 SELECT UPPER('sky')
 ;

-- UPPER changes Fname to Upper
SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- TRIM RTRIM and LTRIM avoid spaces

-- Substring -- LEFT take from LHS the first 4 Char and right from right
SELECT first_name, LEFT(first_name, 4), RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2) -- means we go to the 3rd Char and take 2 Char 
,
birth_date,

SUBSTRING(birth_date, 6, 2)  AS birth_months -- pulled only the months in here 

FROM employee_demographics
;

-- Replace used to replace a value or no, etc

-- Concat used to combine 

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;



 