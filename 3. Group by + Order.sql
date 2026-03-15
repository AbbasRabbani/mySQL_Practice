-- Group BY + Order
SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)   -- this takes average age of the table 
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)   
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary 
FROM employee_salary
GROUP BY occupation, salary
;


-- ORDER BY

SELECT * 
FROM employee_demographics 
ORDER BY first_name
;