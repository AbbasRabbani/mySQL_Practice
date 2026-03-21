-- Case Statement 

SELECT first_name, last_name, age,

CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 and 50 THEN 'OLD'
    WHEN age > 60 THEN 'Retired'
END AS 'AGE Bracket'
FROM employee_demographics
;

-- Pay Increase and Bonus 
-- Less than 50k 5% increase 
-- greater than 50k the 7% increase 
-- Finance department 10 % Bonus 

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    When salary > 50000 Then salary * 1.07
END AS New_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10 
END AS Bonus

FROM employee_salary;

SELECT * 
FROM employee_salary;

SELECT * 
FROM parks_departments;