CREATE TABLE CRICKET (
	Name VARCHAR(50),
	City VARCHAR(50),
	Age INT
)

INSERT INTO CRICKET(NAME,CITY,AGE)
VALUES
('Sachin Tendulkar', 'Mumbai', 30),
('Rahul Dravid', 'Bombay', 35),
('M. S. Dhoni', 'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30)

--1. Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET

--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME, CITY INTO T20 FROM CRICKET WHERE 1=0


--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=0