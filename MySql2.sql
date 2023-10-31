CREATE DATABASE aboutEmployee;

USE aboutEmployee;

DESCRIBE employee;


CREATE TABLE employee(

empId INT PRIMARY KEY,

empName VARCHAR(30),

jobDesc VARCHAR(20),

salary int

);

INSERT INTO employee VALUES(1,"A","ADMIN",10);
INSERT INTO employee VALUES(2,"BASHA","SALES",20);
INSERT INTO employee VALUES(3,"CLARKE","DEVELOPMENT",30);
INSERT INTO employee VALUES(4,"ABI","TESTING",40);
INSERT INTO employee VALUES(5,"RAVI","ACCOUNT",50);
INSERT INTO employee VALUES(6,"RAMESH","MANAGER",60);
INSERT INTO employee VALUES(7,"RAJESH","TL",70);
INSERT INTO employee VALUES(8,"RAHUL","HR",80);
INSERT INTO employee VALUES(9,"RAMMORTHY","ENGINEER",90);
INSERT INTO employee VALUES(10,"VISHWA","ADMIN",100);
INSERT INTO employee VALUES(11,"RAHUL","DEVELOPMENT",110);
INSERT INTO employee VALUES(12,"DHARUN","SALES",120);
INSERT INTO employee VALUES(13,"LOKI","ADMIN",130);

SELECT * FROM employee;

SELECT * FROM employee
WHERE empName<>"ABI";

SELECT * FROM employee
WHERE salary>=50;

SELECT * FROM employee
WHERE salary>=30 AND jobDesc IN ("HR" , "ADMIN" , "DEVELOPMENT");

SELECT * FROM employee
WHERE salary BETWEEN 10 AND 60;

SELECT * FROM employee
LIMIT 5;

SELECT* FROM employee
WHERE empName  LIKE "R%";

SELECT * FROM employee
WHERE empName LIKE "R%L";

SELECT * FROM employee
WHERE empName LIKE "%O%";

SELECT * FROM employee
WHERE empName LIKE "__S%";

UPDATE employee
SET jobDesc="VIP"
WHERE empId=1;

DELETE FROM employee
WHERE empId=12;

SELECT DISTINCT jobDesc FROM employee;

SELECT * FROM employee
ORDER BY empName;

SELECT * FROM employee
ORDER BY jobDesc;

SELECT * FROM employee
ORDER BY salary DESC;

SELECT * FROM employee
ORDER BY jobDesc,empName;

SELECT * FROM employee
WHERE jobDesc="DEVELOPMENT"
ORDER BY salary;

SELECT * FROM employee
ORDER BY ( CASE jobDesc
WHEN "MANAGER" THEN 1
WHEN "DEVELOPMENT" THEN 2 
ELSE 100 END);

SELECT * FROM employee;

SELECT count(*) FROM employee;

SELECT COUNT(*) noOfManagers FROM employee
WHERE jobDesc="DEVELOPMENT"; 

SELECT AVG(salary)
FROM employee
WHERE jobDesc="DEVELOPMENT";

SELECT SUM(salary)
FROM employee
WHERE jobDesc="DEVELOPMENT";

SELECT MAX(salary)
FROM employee;

SELECT MIN(salary)
FROM employee; 

SELECT UCASE(empName)  NAME , salary 
FROM employee;

SELECT empName, char_length(empName) char_count
FROM employee;

SELECT empName , CONCAT('RS.' , salary)
FROM employee;

SELECT empName , CONCAT('RS.' , FORMAT(salary,0)) SALARY
FROM employee;

SELECT empName , LEFT(jobDesc , 3) salary
FROM employee;



 




