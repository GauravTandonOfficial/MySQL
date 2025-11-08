CREATE DATABASE IILM_University;
USE IILM_University;

CREATE TABLE students(
Student_id INT NOT NULL,
First_name VARCHAR(20),
Last_name VARCHAR(20),
Birth_Date DATE,
Registration_id VARCHAR(20),
Phone_No VARCHAR (20),
PRIMARY KEY (Student_id)
);

SELECT *
FROM students;

ALTER TABLE students 
ADD Age INT;

ALTER TABLE Students
RENAME COLUMN Registration_id to Reg_id;

ALTER TABLE students
MODIFY First_name VARCHAR(50);

ALTER TABLE students
DROP column Age;

CREATE TABLE Placments
(Student_name VARCHAR (20),
Student_id INT NOT NULL,
Company_Name VARCHAR(20));

SELECT *
FROM Placments;

DROP TABLE placments;

CREATE DATABASE WWE;
USE WWE;

DROP DATABASE WWE;

TRUNCATE TABLE students;

RENAME TABLE students TO student_name;





