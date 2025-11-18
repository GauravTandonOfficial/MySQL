USE parks_and_recreation;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>=50000;

CREATE PROCEDURE large_salaries()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>50000;

CALL parks_and_recreation.large_salaries();

CREATE PROCEDURE large_salaries2()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>=50000;
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>=10000;

CALL parks_and_recreation.large_salaries2();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>=50000;
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>=10000;
END $$
DELIMITER ;

CALL parks_and_recreation.large_salaries3();

CALL parks_and_recreation.new_procedure();

USE parks_and_recreation;

DELIMITER $$
CREATE PROCEDURE large_salaries4(huggymuffin INT)
BEGIN
SELECT salary
FROM employee_salary
WHERE employee_id=huggymuffin;
END $$
DELIMITER ;

CALL large_salaries4(1);

DELIMITER $$
CREATE PROCEDURE large_salaries5(employee_id_para INT)
BEGIN
SELECT salary
FROM parks_and_recreation.employee_salary
WHERE employee_id=employee_id_para;
END $$
DELIMITER ;

CALL parks_and_recreation.large_salaries5(1);



