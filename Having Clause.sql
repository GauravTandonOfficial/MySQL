SELECT *
FROM parks_and_recreation.
employee_demographics;

SELECT *
FROM parks_and_recreation.
employee_salary;

SELECT gender,AVG(age)
FROM parks_and_recreation.
employee_demographics
GROUP BY gender
HAVING AVG(age)>40;

SELECT occupation,AVG(salary)
FROM parks_and_recreation.
employee_salary
GROUP BY occupation;

SELECT occupation,AVG(salary)
FROM parks_and_recreation.
employee_salary
WHERE occupation LIKE '%Manager'
GROUP BY occupation;

SELECT occupation,AVG(salary)
FROM parks_and_recreation.
employee_salary
WHERE occupation LIKE '%Manager'
GROUP BY occupation
HAVING AVG(salary)>75000;