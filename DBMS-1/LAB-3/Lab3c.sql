--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE
WHERE CITY='RAJKOT'

--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO 
SELECT * FROM EMPLOYEE
WHERE AGE>32