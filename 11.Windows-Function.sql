-- Windows Function

SELECT dem.first_name, dem.last_name, gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender 
;

-- Winows function -- Over brings avg salary of all
-- Partition By is used take eacl row avg seprately on gender basis is same by group by but Partition by if we needs any specific information is used for it 
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER (PARTITION BY gender) -- The column here is completely independent
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Totals
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender  ORDER BY salary DESC) AS Row_NUM ,
RANK() OVER(PARTITION BY gender  ORDER BY salary DESC) AS Rank_Num, -- Here RANK duplicate based of the Order BY which is salary where 5 has same salary and next number would be postitionally like skip 6
DENSE_RANK() OVER(PARTITION BY gender  ORDER BY salary DESC) AS DENS_Rank_Num -- Duplicate but next number be numerically like 6
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;