-- Day 7 SQL Practice 


-- Write a UDF AnnualSalary(monthly_salary) that returns monthly_salary * 12.

Delimiter $$

create function AnnualSalary(monthly_salary int)
Returns decimal(10,2)
Deterministic
begin 
	return monthly_salary * 12;
end $$

Delimiter ;


-- Use the UDF from above question to show each employees annual salary.

select name , AnnualSalary(salary) as annual_salary from employees;

-- Write a UDF BonusPercent(salary, bonus) that returns bonus as a percentage of salary (i.e., bonus/salary*100).

Delimiter $$

create function BonusPercent(salary int, bonus int)
returns int
Deterministic
Begin 
	return (bonus / salary) * 100;
end $$

Delimiter ;

-- Write a stored procedure GetAllStudents() that returns all rows from Students

delimiter $$

create Procedure  GetAllStudents()
begin 
	select * from students ; 
end $$

Delimiter ;

-- Write a stored procedure GetEmployeesByDept(IN dept_name VARCHAR(50)) that returns employees in a given department.

Delimiter $$

create procedure GetEmployeesByDept(IN dept_name VARCHAR(50))

begin
	select * from employees
    where dept = dept_name ;
end $$

Delimiter ;

-- Call the procedure from above for 'IT'

call GetEmployeesByDept('IT');

-- Create a simple view TopStudents showing students with Marks > 80

create view TopStudents as 
select * from students
where marks > 80 ;

-- Query the view from above

select * from TopStudents;

-- Create a complex view StudentCourseView joining Students and Courses to show student name and course name. 

create view StudentCourseView as 
select s.name , c.coursename
from students s 
join courses c
on s.courseid = c.courseid;

-- Create a view DeptSalarySummary showing department name and average salary (uses GROUP BY).

create view DeptSalarySummary as 
select dept, avg(salary) as avrageSalary 
from employees
group by dept;

-- Create a LogTable(message VARCHAR(100)).

create table LogTable (
message varchar(100)
);

-- Write a trigger after_insert_employee that inserts 'New employee added' into LogTable after every insert into Employees

create trigger after_insert_employee
after insert on employees
for each row
insert into logtable values ("New employee added");

-- Insert a new employee and confirm the trigger worked by checking LogTable.

insert into employees values (11,'tara','IT',50000,'1','2023-01-01',1000,'tara@.com');

select * from logtable;

-- Create an index on the Name column of Employees.

create index id_name on employees(name);

-- Using string functions, display all employee names in uppercase, concatenated with ' - Employee'

select concat(upper(name),' - Employee') from employees;

-- Using math functions, round each employee's salary to the nearest thousand... actually, round Salary/1000 to 0 decimal places.

select round(salary/1000,0) from employees;

-- Using date functions, show the current date and the current year.

select year(now());

-- Mixed: Write one query using JOIN + GROUP BY + HAVING: show departments (joined from Departments) with more than 2 employees and their average salary. 

select e.dept, avg(e.salary)
from employees e join 
departments d 
on e.dept = d.deptname
group by e.dept
having count(*) > 2;

-- Mixed: Write one query using a CTE + window function: rank employees by salary within each department and show only rank 1 (highest earner per department). 

with hight_sal as (
select name,dept,rank() over(partition by dept order by salary desc) as rnk from employees
)

select * from hight_sal
 where rnk =1;
 
 -- Mixed: Write one query using CASE + subquery: label each employee as 'Above Average' or 'Below Average' compared to the overall average salary.
 
 select name , salary ,
 case 
 when salary > (select avg(salary) from employees) then 'Below Average'
 else 'above Average'
 end as salary_info
 from employees;
 
 