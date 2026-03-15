-- Joins

SELECT *
FROM employee_demographics; 

SELECT * 
FROM employee_salary;

-- Inner Joins to return rows which are same in both columns of both tables

SELECT *
FROM employee_demographics AS dem   -- dem and sal is Aliasing
JOIN employee_salary AS sal  		-- by default is inner join
	-- gives error due to abuguity does not know which table id
    -- ON employee_id = employee_id
    ON dem.employee_id = sal.employee_id
; 



