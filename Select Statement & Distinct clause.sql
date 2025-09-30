SELECT *
FROM parks_and_recreation.
employee_demographics;

SELECT *
FROM parks_and_recreation.
employee_salary;

SELECT first_name,last_name,occupation,salary
FROM parks_and_recreation.
employee_salary;

SELECT first_name,last_name,birth_date,age,age+10,(age+10)*10
FROM parks_and_recreation.
employee_demographics;

SELECT DISTINCT occupation,salary
FROM parks_and_recreation.
employee_salary;

SELECT DISTINCT gender
FROM parks_and_recreation.
employee_demographics;