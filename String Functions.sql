SELECT LENGTH('Skyfall');

SELECT first_name,length(first_name) AS No_of_characters
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');

SELECT LOWER('SKY');

SELECT first_name,UPPER(first_name)
FROM employee_demographics;

SELECT TRIM('          SKY           ');

SELECT LTRIM('           SKY');

SELECT RTRIM('SKY                          ');

SELECT first_name,LEFT(first_name,4)
FROM employee_demographics;

SELECT first_name,LEFT(first_name,4),RIGHT(first_name,4)
FROM employee_demographics;

SELECT first_name,RIGHT(first_name,4),LEFT(first_name,4),SUBSTRING(first_name,3,2)
FROM employee_demographics;

SELECT first_name,birth_date,
RIGHT(first_name,4),
LEFT(first_name,4),
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date,6,2)
FROM employee_demographics;

SELECT first_name,
REPLACE(first_name,'a','z')
FROM employee_demographics;

SELECT LOCATE('x','ALEXANDER');

SELECT first_name,LOCATE('an',first_name)
FROM employee_demographics;

SELECT first_name,
last_name,
CONCAT(first_name,' ',last_name)AS Full_Name
FROM employee_demographics;