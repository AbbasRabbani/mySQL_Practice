-- Joins

SELECT *
FROM employee_demographics; 

SELECT * 
FROM employee_salary;

-- Inner Joins to return rows which are same in both columns of both tables

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem   -- dem and sal is Aliasing
JOIN employee_salary AS sal  		-- by default is inner join
	-- gives error due to abuguity does not know which table id
    -- ON employee_id = employee_id
    ON dem.employee_id = sal.employee_id
; 

-- Outer Joins
-- LEFT JOIN taking everything left table, and then only returns matches from Right table
-- VICE versa for RJ

SELECT *
FROM employee_demographics AS dem   
LEFT JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
; 

SELECT *
FROM employee_demographics AS dem   
RIGHT JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
; 

-- Self Join is a join tight a table to it self

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON  emp1.employee_id + 1  = emp2.employee_id
;

-- Joining multi tables together
-- one table to another to another table 

SELECT *
FROM employee_demographics AS dem 
JOIN employee_salary AS sal  		
    ON dem.employee_id = sal.employee_id
; 

SELECT * 
FROM parks_departments
;
