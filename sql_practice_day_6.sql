-- Day 6 Sql practice 

-- Using CASE, label employees as 'High' (Salary ≥ 45000), 'Medium' (≥ 32000), else 'Low'

select name, salary, 
case 
 when salary >= 45000 then "High"
 when salary >= 32000 then "Medium"
 else "low"
end as salary_level

from employees;

-- Using CASE, label students as 'Pass' if Marks ≥ 60, else 'Fail'.

select name , marks,
case 
when marks >=60 then "Pass"
else "Fail"
end as result
from students;

-- Replace NULL Bonus values with 0 using IFNULL.

select name , ifnull(bonus,0) bonus from employees;

-- Replace NULL CourseID in Students with 0 using COALESCE.

select name, coalesce(courseid,0) from students;

-- Update all NULL Bonus values in Employees permanently to 0.

update employees 
set bonus = 0
where bonus is null;

set sql_safe_updates = 0;

select * from employees;

-- Write a CTE to select only 'IT' department employees.

with it_dept_employees as ( 
select * from employees
where dept = 'IT'
)
select * from it_dept_employees;

-- Write a CTE to find employees with Salary > 40000, then select only Name and Salary from it.

with high_sal_emp as (
select * from employees
where salary > 40000)

select name,salary from high_sal_emp;


-- Use a CTE to increase salary of all 'Sales' employees by 2000 (CTE + UPDATE).

with sales_emp as(
select * from employees
where dept ='sales')

update employees 
set salary = salary + 2000
where empid in (select empid from sales_emp);


-- Use a CTE to delete all employees in 'HR' department with Salary < 29000 (CTE + DELETE). (Just write the query — don't actually run it if you want to keep your data intact!)

with hr_emp as (
select * from employees
where dept ="HR")

delete from employees 
where empip in (select empid from hr_emp);

-- Assign a unique row number to each student ordered by Marks descending.

select name,marks, row_number() over(order by marks desc) from students;

-- Rank students by Marks descending using RANK().
select name,marks, rank() over(order by marks desc) from students;

-- Rank students by Marks descending using DENSE_RANK(). What's the difference from above result if two students tie?

select name, marks , dense_rank() over(order by marks desc) from students;

-- Rank employees by Salary descending, partitioned by Department

select name,salary,dept ,rank() over(partition by dept order by salary desc) from employees;

-- For each student (ordered by Marks), show the next student's marks using LEAD()

select name,marks,lead(marks) over(order by marks) from students;

-- For each student (ordered by Marks), show the previous student's marks using LAG()

select name,marks,lag(marks) over (order by marks) from students;

-- Find the top-2 highest-paid employees within each department using RANK() + a CTE or subquery.
with ranked as(
select name, salary,dept, rank() over(partition by dept order by salary desc) as rnk from employees)

select * from ranked where rnk <=2;

-- Find employees earning more than the average salary (single-row subquery). 

select * from employees 
where salary > (select avg(salary) from employees);

-- Find employees who work in departments located in 'Hyderabad' (multi-row subquery with IN, using Departments). 

select * from employees
where dept in (select deptname from departments where location ="hyderabad");

-- Find employees whose salary is greater than ANY employee in 'HR' (ANY subquery).

select * from employees
where salary > any (select salary from employees where dept="HR");

-- Find employees whose salary is greater than ALL employees in 'HR' (ALL subquery).


select * from employees
where salary > all (select salary from employees where dept="HR");

-- Write a correlated subquery to find employees who earn the maximum salary in their own department.

select * from employees e1
where salary = (select max(salary) from employees e2 where e1.dept = e2.dept);

-- Write a correlated subquery to find employees earning more than their department's average salary.
select * from employees e1
where salary > (select avg(salary) from employees e2 where e1.dept = e2.dept);
