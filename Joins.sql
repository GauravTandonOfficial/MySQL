SELECT *
FROM parks_and_recreation.employee_demographics
INNER JOIN parks_and_recreation.employee_salary
ON employee_demographics.employee_id=employee_salary.employee_id;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id;

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id,age,occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id;

SELECT *
FROM parks_and_recreation.employee_salary AS EMP1
INNER JOIN parks_and_recreation.employee_salary AS EMP2
ON EMP1.employee_id=EMP2.employee_id;

SELECT *
FROM parks_and_recreation.employee_salary AS EMP1
INNER JOIN parks_and_recreation.employee_salary AS EMP2
ON EMP1.employee_id+1=EMP2.employee_id;

SELECT EMP1.employee_id AS emp_santa,
EMP1.first_name AS first_name_santa,
EMP1.last_name AS last_name_santa,
EMP2.employee_id AS id_employee,
EMP2.first_name AS first_name_employee,
EMP2.LAST_NAME AS last_name_employee
FROM parks_and_recreation.employee_salary AS EMP1
INNER JOIN parks_and_recreation.employee_salary AS EMP2
ON EMP1.employee_id=EMP2.employee_id;

SELECT *
FROM employee_salary;

SELECT *
FROM parks_departments;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
ON sal.dept_id=pd.department_id;

SELECT*
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
ON sal.dept_id=pd.department_id; 
