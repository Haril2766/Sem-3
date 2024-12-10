CREATE TABLE DEPT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES DEPT(DepartmentID)
);

INSERT INTO PERSON (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2001-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2001-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-08-02', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2002-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 3, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-09-01', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');

INSERT INTO DEPT (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'Ci', 'G-Block'),
(4, 'Electrical', 'EE', 'B-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

--Part – A: 
--1. Find all persons with their department name & code. 
SELECT PERSON.PersonName, DEPT.DepartmentName, DEPT.DepartmentCode 
FROM PERSON INNER JOIN DEPT 
ON PERSON.DepartmentID = DEPT.DepartmentID

--2. Find the person's name whose department is in C-Block. 
SELECT PERSON.PersonName
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.Location ='C-BLOCK'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city. 
SELECT PERSON.PersonName, PERSON.Salary, DEPT.DepartmentName 
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city. 
SELECT PERSON.PersonName, PERSON.Salary, DEPT.DepartmentName 
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City != 'RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001. 
SELECT PERSON.PersonName 
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'CIVIL' AND PERSON.JoiningDate > '01-08-2001'

--6. Find details of all persons who belong to the computer department. 
SELECT PERSON.PersonName 
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days. 
SELECT PERSON.PersonName, DEPT.DepartmentName
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID


--8. Find department wise person counts. 
SELECT DEPT.DepartmentName, COUNT(PERSON.DepartmentID)
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName

--9. Give department wise maximum & minimum salary with department name. 
SELECT DEPT.DepartmentName, MAX(PERSON.Salary) AS MAX_SALARY, MIN(PERSON.Salary) AS MIN_SALARY
FROM PERSON INNER JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName

--10. Find city wise total, average, maximum and minimum salary. 
SELECT CITY, SUM(SALARY) AS SUM_SALARY, AVG(SALARY) AS AVG_SALARY, MAX(SALARY) AS MAX_SALARY, MIN(SALARY) AS MIN_SALARY
FROM PERSON
GROUP BY CITY

--11. Find the average salary of a person who belongs to Ahmedabad city. 
SELECT AVG(SALARY) FROM PERSON
WHERE CITY = 'AHMEDABAD'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
 SELECT PERSON.PersonName + ' Lives in ' + PERSON.City + 'and work in '+ dept.DepartmentName + 'Department'
from PERSON JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID

