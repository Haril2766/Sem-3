CREATE TABLE EMPLOYEE(
	Name VARCHAR(50),
	City VARCHAR(50),
	Age INT 
)

INSERT INTO EMPLOYEE(Name, City, Age)
VALUES
('Jay Patel', 'Rajkot', 30),
('Rahul Dave', 'Baroda', 35),
('Jeet Patel', 'Surat', 31),
('Vijay Raval', 'Rajkot', 30)

--1. Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE

--2. Create table Employee_data from Employee with first two columns with no data.
SELECT NAME, CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=0

--3. Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=0
