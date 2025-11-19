DELIMITER $$
CREATE TRIGGER new_employee
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
INSERT INTO employee_demographics(employee_id,first_name,last_name)
VALUES
(NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES
(13,'Faiza','Firoz','Miss Corporate',100000,1);

SELECT *
FROM Employee_salary;

SELECT *
FROM Employee_demographics;

DELIMITER $$
CREATE EVENT delete_employee
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
DELETE 
FROM employee_demographics
WHERE age>=60;
END $$
DELIMITER $$

SELECT *
FROM Employee_demographics;

