SELECT employee_id
FROM parks_and_recreation.employee_salary
WHERE dept_id=1;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id iN 
(SELECT employee_id
FROM parks_and_recreation.employee_salary
WHERE dept_id=1);

SELECT first_name,salary,AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY first_name,salary;

SELECT first_name,salary,
(SELECT AVG(salary)
FROM parks_and_recreation.employee_salary)
FROM parks_and_recreation.employee_salary;

SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender,AVG(`MAX(age)`)
FROM(SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;

SELECT AVG(`MAX(age)`)
FROM(SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_Table;

SELECT AVG(Max_age)
FROM(SELECT gender,AVG(age) AS Avg_age,MAX(age)AS Max_age,MIN(age)AS Min_age,COUNT(age)AS Count_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender)AS Agg_Table;