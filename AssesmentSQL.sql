CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '21-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '21-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '21-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '21-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '21-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '21-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '21-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '21-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '23-02-20'),
		(002, 3000, '23-06-11'),
		(003, 4000, '23-02-20'),
		(001, 4500, '23-02-20'),
		(002, 3500, '23-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2023-02-20 00:00:00'),
 (002, 'Executive', '2023-06-11 00:00:00'),
 (008, 'Executive', '2023-06-11 00:00:00'),
 (005, 'Manager', '2023-06-11 00:00:00'),
 (004, 'Asst. Manager', '2023-06-11 00:00:00'),
  (007, 'Executive', '2023-06-11 00:00:00'),
 (006, 'Lead', '2023-06-11 00:00:00'),
 (003, 'Lead', '2023-06-11 00:00:00');
 
 
 -- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;



-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
 Select * from Worker where FIRST_NAME in ('Vipul','Satish');
 
 -- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
 Select * from Worker where FIRST_NAME like '_____h';
 
 -- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
 You are here: Home/ SQL Interview/ Top 100 SQL Query Interview Questions and Answers in 2024
Top 100 SQL Query Interview Questions and Answers in 2024
Jan 06, 2024 by Meenakshi Agarwal Leave a Comment

Hey Friends, we’ve brought you the top 100 SQL query interview questions and exercises for practice. The first 50, in this post, are the most frequently asked SQL queries and the remaining 50 are the tricky SQL queries for interview. So, start with the readymade SQL script provided to create the test data. The script includes a sample Worker table, a Bonus, and a Title table with pre-filled data. Just run the SQL script, and you are all set to get started with the SQL queries. Practice as much as you can before you face these questions in interviews with top IT MNCs like Amazon, Flipkart, Facebook, etc.

Ezoic
Get Started with 100 SQL Query Interview Questions.
We recommend that you first try to form queries by yourself rather than just reading them from the post. This tutorial includes SQL scripts to create the test data. So, you can use them to create a test database and tables. Once you have done enough SQL practice, then also check out another post on SQL interview prep for QA and DBAs.

Let’s prepare sample data for SQL practice.
Sample Table – Worker
WORKER_ID	FIRST_NAME	LAST_NAME	SALARY	JOINING_DATE	DEPARTMENT
001	Monika	Arora	100000	2021-02-20 09:00:00	HR
002	Niharika	Verma	80000	2021-06-11 09:00:00	Admin
003	Vishal	Singhal	300000	2021-02-20 09:00:00	HR
004	Amitabh	Singh	500000	2021-02-20 09:00:00	Admin
005	Vivek	Bhati	500000	2021-06-11 09:00:00	Admin
006	Vipul	Diwan	200000	2021-06-11 09:00:00	Account
007	Satish	Kumar	75000	2021-01-20 09:00:00	Account
008	Geetika	Chauhan	90000	2021-04-11 09:00:00	Admin
Worker Table
Bug/Defect Life Cycle in Software ...

Pause

Unmute
Remaining Time -2:54


Captions
Fullscreen
Now Playing
Bug/Defect Life Cycle in Software Testing

Product Life Cycle Explained with Agile Mindset
2:47

Seven Steps to Become a Successful Test Automation Developer
3:03

Difference between Defect, Error, Bug, Failure, and Fault
3:38

15 Interview questions on leadership with answers
8:11

Software Quality Assurance Interview Questions for QA Testers
3:15

Difference Between Spring and Spring Boot
3:31
Now Playing
Bug/Defect Life Cycle in Software Testing

Product Life Cycle Explained with Agile Mindset
2:47

Seven Steps to Become a Successful Test Automation Developer
3:03

Difference between Defect, Error, Bug, Failure, and Fault
3:38

15 Interview questions on leadership with answers
8:11

Software Quality Assurance Interview Questions for QA Testers
3:15

Difference Between Spring and Spring Boot
3:31
Play Video
Sample Table – Bonus
WORKER_REF_ID	BONUS_DATE	BONUS_AMOUNT
1	2023-02-20 00:00:00	5000
2	2023-06-11 00:00:00	3000
3	2023-02-20 00:00:00	4000
1	2023-02-20 00:00:00	4500
2	2023-06-11 00:00:00	3500
Bonus Table
Sample Table – Title
WORKER_REF_ID	WORKER_TITLE	AFFECTED_FROM
1	Manager	2023-02-20 00:00:00
2	Executive	2023-06-11 00:00:00
8	Executive	2023-06-11 00:00:00
5	Manager	2023-06-11 00:00:00
4	Asst. Manager	2023-06-11 00:00:00
7	Executive	2023-06-11 00:00:00
6	Lead	2023-06-11 00:00:00
3	Lead	2023-06-11 00:00:00
Title Table
To prepare the sample data, you can run the following queries in your database query executor or on the SQL command line. We’ve tested them with MySQL Server 5.7 and MySQL Workbench 6.3.8 query browser. You can also download these tools and install them to execute the SQL queries.

SQL Script to Seed Sample Data.
CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '21-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '21-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '21-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '21-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '21-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '21-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '21-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '21-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '23-02-20'),
		(002, 3000, '23-06-11'),
		(003, 4000, '23-02-20'),
		(001, 4500, '23-02-20'),
		(002, 3500, '23-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2023-02-20 00:00:00'),
 (002, 'Executive', '2023-06-11 00:00:00'),
 (008, 'Executive', '2023-06-11 00:00:00'),
 (005, 'Manager', '2023-06-11 00:00:00'),
 (004, 'Asst. Manager', '2023-06-11 00:00:00'),
 (007, 'Executive', '2023-06-11 00:00:00'),
 (006, 'Lead', '2023-06-11 00:00:00'),
 (003, 'Lead', '2023-06-11 00:00:00');
-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 

Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
Select * from Worker where FIRST_NAME in ('Vipul','Satish');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 

Select * from Worker where FIRST_NAME like '_____h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000. 

Select * from Worker where SALARY between 100000 and 500000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

-- 6. Write an SQL query to show the top 6 records of a table. 
SELECT * FROM Worker ORDER BY Salary DESC LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them
SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 
SELECT DEPARTMENT, COUNT(DEPARTMENT) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;
 
 
-- Question 2: Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT
 
create database school;
use school;
create table students(StdID int, StdName varchar(50), Sex varchar(50), Percentage int, Class int, Sec varchar(50), Stream varchar(50), DOB int);
insert into students values
(1001, "Surekha Joshi", "Female", 82, 12, "A", "Science", 3/8/1998),
(1002, "Maahi Agarwal", "Female", 56, 11, "C", "Commerce", 11/23/2008),
(1003, "Sanam Verma", "Male", 59, 11, "C", "Commerce", 6/29/2006),
(1004, "Ronit Kumar", "Male", 63, 11, "C", "Commerce", 11/5/1997),
(1005, "Dipesh Pulkit", "Male", 78, 11, "B","Science", 14/09/2003),
(1006, "JAHANVI Puri", "Female", 60, 11, "B", "Commerce", 11/7/2008),
(1007, "Sanam Kumar", "Male", 23, 12, "F", "Commerce", 3/8/1998),
(1008, "SAHIL SARAS" , "Male", 56, 11, "C", "Commerce", 11/7/2008),
(1009, "AKSHRA AGARWAL", "Female", 72, 12, "B", "Commerce", 10/1/1996),
(1010, "STUTI MISHRA", "Female", 39, 11, "F", "Science", 11/23/2008),
(1011, "HARSH AGARWAL", "Male", 42, 11, "C", "Science", 3/8/1998),
(1012, "NIKUNJ AGARWAL", "Male", 49, 12, "C", "Commerce", 28/06/1998),
(1013, "AKRITI SAXENA", "Female", 89, 12, "A", "Science", 11/23/2008),
(1014, "TANI RASTOGI", "Female", 82, 12, "A", "Science", 11/23/2008);


-- 1 To display all the records form STUDENT table. 
SELECT * FROM students ; 

-- 2. To display any name and date of birth from the table STUDENT. 
select StdName, DOB from students;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
SELECT * FROM students WHERE percentage >= 80; 

-- 4. To display student name, stream and percentage where percentage of student is more than 80 
SELECT StdName, Stream, Percentage from students WHERE percentage > 80; 

-- 5. To display all records of science students whose percentage is more than 75 form student table. 
SELECT * from students WHERE stream = "Science" AND percentage > 75; 


  
