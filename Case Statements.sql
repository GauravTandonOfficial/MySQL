SELECT first_name,last_name,age,
CASE
WHEN age<=30 THEN 'Young'
END
FROM employee_demographics;

SELECT first_name,last_name,age,
CASE 
WHEN age<=30 THEN 'Young'
WHEN age BETWEEN 31 AND 50 THEN 'old'
END
FROM employee_demographics;

SELECT first_name,last_name,age,
CASE
WHEN age<=30 THEN 'Young'
WHEN age BETWEEN 31 AND 50 THEN 'Old'
WHEN age>=50 THEN 'On Death Doors'
END
FROM employee_demographics;

SELECT first_name,last_name,salary,
CASE 
WHEN salary<50000 THEN (salary*1.05)
WHEN salary>50000 THEN (salary*1.07)
END AS New_salary
FROM employee_salary;

SELECT first_name,last_name,salary,
CASE
WHEN salary<50000 THEN (salary*1.05)
WHEN salary>50000 THEN (salary*1.07)
END AS New_salary,
CASE
WHEN dept_id=6 THEN (salary*0.1)
END AS Bonus
FROM employee_salary;
