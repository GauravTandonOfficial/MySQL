CREATE TEMPORARY TABLE Temp_Table
(first_name VARCHAR(50),
last_name VARCHAR(50),
favourite_movie VARCHAR(100));

SELECT *
FROM Temp_Table;

INSERT INTO Temp_Table(first_name,last_name,favourite_movie)
VALUES
('Gourav','Tandon','The Oxford Year'),
('Miss','Flora','The Jungle Book');

SELECT *
FROM Temp_Table;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>50000;

SELECT *
FROM salary_over_50k;

