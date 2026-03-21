-- Case Statement 

SELECT first_name, last_name, age,

CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 and 50 THEN 'OLD'
    WHEN age > 60 THEN 'Retired'
END AS 'AGE Bracket'
FROM employee_demographics
;