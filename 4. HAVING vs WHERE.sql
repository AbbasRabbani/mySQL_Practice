-- Having vs Where 

SELECT gender , AVG(age)
FROM employee_demographics
Group BY gender
HAVING AVG(age) > 40
;

-- Using both

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000 -- HAVING only works after the GROUP BY for AVG 
;

