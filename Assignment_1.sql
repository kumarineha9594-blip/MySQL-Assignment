create database Company_details;
USE Company_details;
create table Company_details
(
emp_id int,
emp_name varchar(50),
emp_salary int,
emp_age int,
emp_city varchar(50)
);
select*from Company_details;
insert into Company_details values (101,'Amit',40000,28,'Delhi');
insert into Company_details values (102,'Priya',55000,26,'Mumbai');
insert into Company_details values (103,'Rohan',60000,31,'Delhi');
insert into Company_details values (104,'Neha',45000,29,'Kolkata');
insert into Company_details values (105,'Kiran',70000,34,'Mumbai');
insert into Company_details values (106,'Sneha',30000,22,'Banglore');
insert into Company_details values (107,'Vikas',70000,27,'Delhi');
select * from Company_details;

-- Q1
SELECT *
FROM Company_details
WHERE emp_salary=(SELECT min(emp_salary) FROM Company_details)

-- Q2
SELECT *
FROM Company_details
WHERE emp_salary=(SELECT max(emp_salary) FROM Company_details)

-- Q3
SELECT *
FROM Company_details
WHERE emp_salary>=(SELECT avg(emp_salary) FROM Company_details)

-- Q4
SELECT *
FROM Company_details
WHERE emp_salary=(SELECT emp_salary FROM Company_details where emp_name='Rohan')

-- Q5
SELECT *
FROM Company_details
WHERE emp_salary!=(SELECT min(emp_salary) FROM Company_details)

--Q6
SELECT *
FROM Company_details
WHERE emp_age>(SELECT min(emp_age) FROM Company_details)

-- Q7
SELECT *
FROM Company_details
WHERE emp_age<(SELECT max(emp_age) FROM Company_details)

-- Q8
SELECT *
FROM Company_details
WHERE emp_salary>(SELECT max(emp_salary) FROM Company_details where emp_city='Delhi')

--SELECT *
--FROM Company_details
--WHERE emp_salary> all (SELECT emp_salary FROM Company_details where emp_city='Delhi')

-- Q9
SELECT *
FROM Company_details
WHERE emp_age<(SELECT min(emp_age) FROM Company_details where emp_city='Mumbai')

-- Q10
SELECT *
FROM Company_details e1
WHERE emp_salary in (SELECT emp_salary FROM Company_details e2 where e1.emp_id <> e2.emp_id)

-- Q11
SELECT *
FROM Company_details
WHERE emp_salary > any (SELECT emp_salary FROM Company_details where emp_age>30)

-- Q12
SELECT *
FROM Company_details
WHERE emp_age > (SELECT avg(emp_age) FROM Company_details where emp_salary>50000)

-- Q13
SELECT *
FROM Company_details
WHERE emp_salary <> (SELECT max(emp_salary) FROM Company_details) and emp_salary > (select avg(emp_salary) from Company_details)

-- Q14
SELECT *
FROM Company_details e
WHERE emp_salary > All (SELECT max(emp_salary) FROM Company_details where emp_age<e.amp_age)
--error

-- Q15
SELECT *
FROM Company_details 
WHERE emp_salary = (SELECT max(emp_salary) FROM Company_details where emp_salary < (select max(emp_salary) from Company_details))