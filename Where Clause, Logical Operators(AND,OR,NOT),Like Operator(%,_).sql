SELECT *
FROM parks_and_recreation.
employee_salary;

SELECT*
FROM parks_and_recreation.
employee_demographics;

SELECT *
FROM parks_and_recreation.
employee_demographics
WHERE first_name='Tom'; 

SELECT *
FROM parks_and_recreation.
employee_salary
WHERE first_name='Leslie';

SELECT *
FROM parks_and_recreation.
employee_salary
WHERE salary>50000;

SELECT *
FROM parks_and_recreation.
employee_salary
WHERE salary<50000;

SELECT*
FROM parks_and_recreation.
employee_salary
WHERE salary>=50000;

SELECT*
FROM parks_and_recreation.
employee_salary
WHERE salary<=50000;

SELECT *
FROM parks_and_recreation.
employee_demographics
WHERE gender='Female';

SELECT*
FROM parks_and_recreation.
employee_demographics
WHERE gender!='Female';

SELECT*
FROM parks_and_recreation.
employee_demographics
WHERE birth_date>'1985-01-01';

SELECT *
FROM parks_and_recreation.
employee_demographics
WHERE birth_date>'1985-01-01' AND gender='Male';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date>'1985-01-01' OR gender='Male';

SELECT*
FROM parks_and_recreation.employee_demographics
WHERE birth_date>'1985-01-01' OR NOT gender='Male';

SELECT *
FROM parks_and_recreation.
employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM parks_and_recreation.
employee_demographics
WHERE first_name LIKE 'A%';

SELECT *
FROM parks_and_recreation.
employee_demographics
WHERE first_name LIKE 'A____';