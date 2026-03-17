-- Unions 

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'

UNION -- By default union would be UNION DISTINCT means takes Unique name or value avoiding duplications

SELECT first_name, last_name, 'Old Women' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'

UNION 

SELECT first_name, last_name, 'High Paid Employee' AS Label
FROM employee_salary
WHERE salary > 75000
ORDER BY first_name , last_name

;