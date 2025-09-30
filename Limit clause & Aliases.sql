SELECT *
FROM parks_and_recreation.
employee_demographics;

SELECT *
FROM parks_and_recreation.
employee_demographics
LIMIT 3;

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 1,1;

SELECT *
FROM parks_and_recreation.
employee_demographics
LIMIT 2,1;

SELECT*
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM parks_and_recreation.
employee_demographics
ORDER BY age DESC
LIMIT 2,1;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender,AVG(age)AS Avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING Avg_age>40;




