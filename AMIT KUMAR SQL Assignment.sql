
# ACTIVITY 1:

CREATE DATABASE school;

USE school;

CREATE TABLE student(
stdID INT NOT NULL,
stdName VARCHAR(50),
Sex VARCHAR(30),
Percentage INT NOT NULL,
Class INT,
Sec VARCHAR(10),
Stream VARCHAR(20),
DOB DATE
);

INSERT INTO student 
(stdID,stdName,Sex,Percentage,Class,Sec,Stream,DOB)
VALUES
(1001,"AKSHRA AGARWAL","FEMALE",70,11,"A","Science","1996-11-10"),
(1002,"ANJANI SHARMA","FEMALE",75,11,"A","Commerce","1996-09-18"),
(1003,"ANSHUL SAXENA","MALE",78,11,"A","Commerce","1996-11-19"),
(1004,"AISHWARYA SINGH","FEMALE",79,11,"A","Commerce","1996-1-11"),
(1005,"AKRITI SAXENA","FEMALE",76,11,"A","Commerce","1996-09-20"),
(1006,"KHUSI AGARWAL","FEMALE",77,11,"A","Commerce","2003-09-14"),
(1007,"MAAHI AGARWAL","FEMALE",74,11,"A","Science","1997-04-21"),
(1008,"MITALI GUPTA","FEMALE",78,12,"A","Science","1997-11-26"),
(1009,"NIKUNJ AGARWAL","MALE",58,12,"A","Science","1997-7-12"),
(1010,"PARKHI","FEMALE",59,12,"A","Commerce","1997-12-20"),
(1011,"PRAKHAR TIWARI","MALE",43,12,"A","Science","1997-04-22"),
(1012,"RAGHAV GANGWAR","MALE",58,12,"A","Commerce","1997-12-21"),
(1013,"SAHIL SARASWAT","MALE",57,12,"A","Commerce","1997-08-13"),
(1014,"SWATI MISHRA","FEMALE",98,11,"A","Science","1996-08-13"),
(1015,"HARSH AGARWAL","MALE",58,11,"B","Science","2003-08-28"),
(1016,"HARSHIT KUMAR","MALE",98,11,"B","Science","2003-05-22"),
(1017,"JHANVI KAPOOR","MALE",65,11,"B","Science","1997-1-10"),
(1018,"STUTI MISHRA","MALE",66,11,"C","Commerce","1996-1-10"),
(1019,"SURYANSH KUMAR AGARWAL","MALE",85,11,"C","Commerce","2007-08-22"),
(1020,"TANI RASTOGI","FEMALE",75,11,"C","Commerce","1998-01-15"),
(1021,"TANISHK GUPTA",",MALE",55,11,"C","Science","1998-4-11"),
(1022,"TANMAY AGARWAL","MALE",57,11,"C","Commerce","1998-06-28"),
(1023,"YASH SAXENA","MALE",79,11,"C","Science","1998-3-13"),
(1024,"YESH DUBEY","MALE",85,12,"C","Commerce","1998-4-3");

#ACTIVITY 2:

SELECT *
FROM student;

SELECT stdName,DOB FROM student;

SELECT * FROM student WHERE Percentage >= 80;

SELECT stdName,Stream,Percentage FROM student WHERE Percentage > 80;

SELECT * FROM student WHERE Percentage > 75 AND Stream = "Science";

# ACTIVITY 3:



ALTER TABLE student ADD COLUMN TeacherID VARCHAR(20);

DESC student;

ALTER TABLE student MODIFY TeacherID INT;

# ACTIVITY 4:

ALTER TABLE student DROP COLUMN TeacherID;

SELECT StdName,Percentage,Percentage-5 FROM student; 

SELECT StdName as "Student Name",DOB as "Date Of Birth" From Student;

SELECT StdName,Stream FROM student WHERE NOT Stream = "Science";

SELECT StdName,Percentage From student WHERE Percentage BETWEEN 60 and 80;

# ACTIVITY 5;

UPDATE student 
SET StdName = "SWATI VERMA", Percentage = 86
WHERE StdID =1014;

DELETE FROM student WHERE StdID = 1016;

SELECT * FROM Student WHERE StdName LIKE "G_";
SELECT * FROM Student WHERE StdName="G";
SELECT * FROM Student WHERE StdName LIKE "G%";
SELECT * FROM Student WHERE StdName= "%G%";

SELECT Stream FROM Student;

SELECT StdName,Sex,Stream FROM student WHERE Percentage BETWEEN 70 and 80;


CREATE TABLE Empl(
empno INT UNIQUE,
ename VARCHAR(30) NOT NULL,
job VARCHAR(50),
mgr INT,
hiredate DATE,
sal INT,
comm INT,
deptno INT 
);


INSERT INTO Empl
(empno,ename,job,mgr,hiredate,sal,comm,deptno)
VALUES
(8369,"SMITH","CLERK",8902,"1990-12-18",800.00,NULL,20),
(8499,"ANYA","SALESMAN",8698,"1991-02-20",1600.00,300.00,30),
(8521,"SETH","SALESMAN",8698,"1991-02-22",1250.00,500.00,30),
(8566,"MAHADEVAN","MANAGER",8839,"1991-04-22",2985.00,NULL,20),
(8654,"MOMIN","SALESMAN",8689,"1991-09-28",1250.00,1400.00,30),
(8698,"BINA","MANAGER",8839,"1991-05-01",2850.00,NULL,30),
(8882,"SHIVANSH","MANAGER",8839,"1991-06-09",2450.00,NULL,10),
(8888,"SCOTT","ANALYST",8566,"1992-12-09",3000.00,NULL,20),
(8839,"AMIR","PRESIDENT",NULL,"1991-11-18",5000.00,NULL,10),
(8844,"KULDEEP","SALESMAN",8698,"1991-09-08",1500.00,0.00,30);

SELECT * FROM Empl;

SELECT ename,sal FROM Empl WHERE sal >= 2200;

SELECT * FROM Empl WHERE comm IS NULL;

SELECT ename,sal FROM Empl WHERE sal NOT BETWEEN 2500 and 4000;

SELECT ename,job,sal FROM Empl WHERE NOT job = "MANAGER";

SELECT * FROM Empl WHERE ename LIKE "__A%";

SELECT * FROM Empl WHERE ename LIKE "%T";

SELECT * FROM Empl WHERE ename LIKE "M%__L%";





















































