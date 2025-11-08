SELECT *
FROM student_name;

INSERT INTO student_name(student_id,First_name,last_name,Birth_Date,Reg_id,Phone_No)
VALUES
(1001,'Faiza','Firoz','2001-10-02','MBA 9965',984048484048),
(1002,'Gourav','Tandon','2002-02-11','MBA 9964',7847979840);

SELECT *
FROM student_name;

SELECT first_name,last_name
FROM iilm_university.student_name;

UPDATE student_name
SET phone_No= 664433221188
WHERE first_name='Faiza';

DELETE FROM student_name
WHERE first_name='Faiza';