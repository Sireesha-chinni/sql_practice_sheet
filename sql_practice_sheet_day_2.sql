-- Day 2 Practice sheet -- 


-- Write a CREATE TABLE for Attendance with: AttendanceID (PK), EmpID (FK referencing Employees), Date, Status.

create table attendance (
attendanceID int primary key,
EmpID INT,
date date,
status varchar(30),
foreign key (EmpID) references employees(EmpID)
);

-- Add a new column Email VARCHAR(100) to the Employees table.

alter table employees add email varchar(100);

-- Modify the Bonus column in Employees to datatype FLOAT.

alter table employees modify bonus float;

-- Rename the column Department in Employees to Dept.

alter table employees rename column Department To Dept;

-- Drop the Email column you added in above

alter table employees drop column email;

-- Rename the table Sales to SalesRecords, then rename it back to Sales.

rename table sales To SalesRecords;

rename table SalesRecords To Sales;

-- Remove all rows from a copy table Sales_Copy (structure same as Sales) without deleting the table itself.

create table sales_copy as 
select * from sales;

select * from sales_copy;

truncate table sales_copy;

-- Delete the table Sales_Copy completely.

drop table sales_copy;

-- Write a constraint that ensures the Name column in Employees can never be empty.

alter table employees modify column name varchar(50) not null;

desc employees;

-- Write a constraint that ensures no two employees have the same Email.

alter table employees add column email varchar(100) unique;

-- Write a constraint that only allows Salary values greater than 10000.

alter table employees modify column salary decimal(10,2) check (salary >10000);

-- Write a constraint that automatically sets Department to 'General' if not provided.

alter table employees modify column Dept varchar(100) default 'General';

-- Write a constraint that auto-generates EmpID starting from 1.

alter table employees modify column empid int auto_increment;


ALTER TABLE Attendance
DROP FOREIGN KEY empID;

-- Create a full CREATE TABLE statement for NewEmployees using AUTO_INCREMENT PK, NOT NULL name, UNIQUE email, CHECK age >= 18, DEFAULT country = 'India'.

create table newemployees (
employeeID int primary key auto_increment,
emp_name varchar(50) NOT NUll,
email varchar(100) unique,
age int check (age >= 18),
country varchar(50) default 'India'
);

-- Will this insert succeed or fail? Why? INSERT INTO NewEmployees (Name, Email, Age) VALUES ('Rahul', 'rahul@x.com', 16);

insert newemployees (emp_name, email,age) values ('Rahul','Rahul@x.com',16);

-- Will this insert succeed or fail? Why? INSERT INTO NewEmployees (Email, Age) VALUES ('no_name@x.com', 21);

insert newemployees (email,age) values ('no_name@x.com',21);
 