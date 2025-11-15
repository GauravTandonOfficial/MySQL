SELECT gender,AVG(age),MAX(age),MIN(age),SUM(age),COUNT(age)
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
GROUP BY gender;

With Faiza_Firoz AS 
(SELECT gender,AVG(age),MAX(age),MIN(age),SUM(age),COUNT(age)
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
GROUP BY gender)

SELECT *
FROM Faiza_Firoz;

WITH CTE_Example AS
(SELECT gender,
AVG(age) AS Avg_age,
MAX(age) AS Max_age,
MIN(age) AS Min_age,
COUNT(age) AS Count_age,
SUM(age) AS Sum_age
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
GROUP BY gender)

SELECT AVG(Avg_age)
FROM CTE_Example;

WITH CTE_Example AS
(SELECT gender, AVG(salary) AS Avg_salary,
MAX(salary) AS Max_salary,
MIN(salary) AS MIn_salary,
SUM(salary) AS Sum_salary,
COUNT(salary) AS Count_salary
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
GROUP BY gender
)
SELECT AVG(Avg_salary)
FROM CTE_Example;

SELECT AVG(avg_sal)
FROM( SELECT gender,AVG(salary) AS avg_sal,MAX(salary) AS max_sal,MIN(salary) AS min_sal, SUM(salary) AS sum_sal,COUNT(salary) AS count_sal
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
GROUP BY gender) AS Example_sub_query;

WITH CTE_Example AS
(SELECT gender,employee_id,birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date>'1985-01-01'),

CTE_Example2 AS
(SELECT employee_id,salary
FROM parks_and_recreation.employee_salary
WHERE salary>50000)

SELECT *
FROM CTE_Example
JOIN CTE_Example2
ON CTE_Example.employee_id=CTE_Example2.employee_id;

WITH CTE_Example (GENDER,AVG_SAL,MAX_SAL,MIN_SAL,COUNT_SAL,SUM_SAL) AS
(SELECT gender,AVG(salary) AS avg_sal,MAX(salary)AS max_sal,MIN(salary) AS min_sal,COUNT(salary)AS count_sal,SUM(salary)AS sum_sal
FROM parks_and_recreation.employee_demographics AS dem
JOIN parks_and_recreation.employee_salary AS sal
ON dem.employee_id=sal.employee_id
GROUP BY gender)

SELECT *
FROM CTE_Example;


