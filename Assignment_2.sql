Create database Employees;
show databases;
Use Employees;
Create Table Employees
(
	Emp_ID Int,
	Emp_Name Varchar(50),
	Department Varchar(50),
	Job_Totle Varchar(50),
	Salary Int,
	Hire_Date date
);
Insert Into Employees
values
	(1,"Riya","HR","Recruiter",400000,"2020-05-10"),
    (2,"Aman","IT","Developer",50000,"2021-06-12"),
    (3,"Karan","HR","Manager",55000,"2019-03-18"),
    (4,"Neha","IT","Developer",60000,"2022-01-25"),
    (5,"Priya","Sales","Executive",35000,"2023-08-05"),
    (6,"Rahul","Sales","Manager",48000,"2020-09-19"),
    (7,"Sneha","IT","Tester",42000,"2023-02-10");
Select* From Employees;
Select Department, Count(Emp_ID) From Employees group by Department;
Select Department, Avg(Salary) From Employees group by Department;
Select Department, Max(Salary) As "Highest Salary",
					Min(salary) As "Lowest Salary"
                    from Employees Group by Department;
Select Job_Totle, Count(Emp_ID) As "Count of Employees" from Employees group by Job_Totle;
Select Department, Sum(Salary) As "Total Expense" from Employees group by Department;

                    

    
