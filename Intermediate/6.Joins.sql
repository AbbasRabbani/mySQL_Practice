-- Joins

SELECT *
FROM employee_demographics; 

SELECT * 
FROM employee_salary;

-- Inner Joins to return rows which are same in both columns of both tables

SELECT *
FROM employee_demographics
JOIN employee_salary 		-- by default is inner join
	-- gives error due to abuguity does not know which table id
    -- ON employee_id = employee_id
    ON employee_demographics.employee_id = employee_salary.employee_id
; 

