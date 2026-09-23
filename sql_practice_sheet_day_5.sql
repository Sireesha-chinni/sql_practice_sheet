-- Day 5 practice sheet


--- Get each students name with their course name using INNER JOIN.

select s.name, c.coursename
from students s inner join courses c
on s.courseID = c.courseid;

-- Get all students and their course names, including students with no course (LEFT JOIN).

select s.* , c.coursename
from students s left join courses c
on s.courseid = c.courseid;

-- Get all courses and enrolled student names, including courses with no students (RIGHT JOIN).

select s.name ,c.coursename
from students s right join courses c
on s.courseid = c.courseid;

-- Get every student paired with every course (CROSS JOIN) — how many rows will result if there are 10 students and 5 courses?

select s.name, c.coursename
from students s cross join courses c;


-- Get all students and all courses, matched or not (FULL JOIN using UNION).

select s.name,c.coursename
from students s right join courses c
on s.courseid = c.courseid

union

select s.name,c.coursename
from students s left join courses c
on s.courseid = c.courseid;

-- Using Employees (self-referencing via ManagerID), list each employee with their manager's name (SELF JOIN).

select e1. name ,e2.name 
from employees e1
join employees e2
on e1.empid = e2.managerid; 

-- List employees who do NOT report to anyone (no manager).
select * from employees where managerid is null;


-- List all managers and how many people report to them (JOIN + GROUP BY).
select e2.name,count(*) from employees e1
join employees e2
on e1.empid = e2.managerid
group by e2.name;

-- Find students who are NOT enrolled in any course (LEFT JOIN + IS NULL).
select s.name from students s
left join courses c
on s.courseid = c.courseid
where s.courseid is null;

-- Find courses that have NO students enrolled (RIGHT JOIN or LEFT JOIN + IS NULL).

select c.coursename from students s
right join courses c
on s.courseid = c.courseid
where s.name is null;

-- Join Employees and Departments on department name to show each employee with their department's location. (Hint: join Employees.Department = Departments.DeptName)

select e.name , d.location 
from employees e right join
departments d on e.dept = d.deptname;


-- Using INNER JOIN, list student names and marks only for students enrolled in 'Python'.

select s.name, c.coursename from students s
right join courses c
on s.courseid = c.courseid 
where c.coursename = 'python';

-- List all unique cities that appear in Students OR as a Location in Departments (UNION). 

select e.name,d.location from employees e join departments d 
on e.dept = d.deptname;

select city from students union select location from departments;

-- Write a query using UNION ALL to combine Name from Students and Name from Employees (duplicates kept). 

select name from students union all select name from employees;


-- Find names that appear in BOTH Students.Name and Employees.Name (INTERSECT logic using IN).

select name from students where name in (select name from employees);

-- Find student names that do NOT appear in Employees.Name (EXCEPT logic using NOT IN). 

select name from students where name not in (select name from employees);

-- Combine city names from Students and Departments without removing duplicates

select city from students union all select location from departments;

-- Using INTERSECT-style logic, find department names common to both Employees.Department and Departments.DeptName

select deptname from departments where deptname in (select dept from employees);

--  Write a query to find all cities in Students that are NOT also a Departments.Location.

select distinct city from students 
where city not in (select location from departments);
