-- Where Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT * 
FROM employee_salary
WHERE salary > 50000
;

SELECT *
FROM employee_demographics
WHERE gender!= 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical Operators 

SELECT *
FROM employee_demographics
WHERE gender != 'male'
AND birth_date > '1985-01-01'
OR gender != 'Female'
;


-- LIKE Statement 
-- % and _ (% anything, and _ means specific value)

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;
