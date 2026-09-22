
--- Day 4 of sql practice
  -- Sort Students by Marks ascending.
  
  select * from students 
  order by marks asc;
  
  -- Sort Students by Marks descending.
  
    select * from students 
  order by marks desc;
  
  -- Sort Employees by Salary descending, then by Name ascending.
  
  select * from employees
  order by salary desc, name asc;
  
  -- Show only the top 3 highest-marks students.
  
  select * from students 
  order by marks desc
  limit 3;
  
  -- Show the 2 lowest-paid employees.
  
select * from employees 
order by salary asc
limit 2;

-- Count total number of students.

select count(*) as total_number_of_students from students;

-- Count total number of employees in the 'IT' department.

select count(*) as "Count Of Employees in it" from employees
where dept = "IT";

-- Find the sum of all Marks in Students.

select sum(marks) as "Total marks of students" from students;

-- Find the average Salary of all employees.

select avg(salary) as "average_salary_of_employees" from employees;

-- Find the minimum and maximum Marks in one query.

select min(marks) min_marks,max(marks) max_marks from students;

-- Find total sales Price from the Sales table.

select sum(price) as Total_sales from sales;

-- Group Sales by Category and show total price per category.

select category,sum(price) as Total_price from sales
group by category;

-- Group Employees by Department and show average salary per department.

select dept,avg(salary) as "average_salary" from employees
group by dept;

-- Group Students by City and show count of students per city.

select city,count(*) as number_of_students from students
group by city;

-- Show categories from Sales where total price > 20000 (use HAVING).

select category, sum(price) as "total_price" from sales
group by category
having total_price > 20000;

-- Show departments where average salary > 35000 (use HAVING).

select dept, avg(salary) as average_salary from employees
group by dept
having average_salary>35000;

-- Show cities having more than 2 students (use HAVING with COUNT).

select city,count(*) as number_of_students from students
group by city 
having number_of_students >2;

-- Show each department's employee count, but only for departments with more than 2 employees.

select dept, count(*) as count_of_employees from employees
group by dept
having count_of_employees >2;

-- Show the top 5 employees by salary, in descending order.

select * from employees
order by salary desc
limit 5;

-- Find total, average, min, and max marks in a single query.

select sum(marks),avg(marks),min(marks),max(marks) from students;

-- Group sales by category, only show categories with more than 1 product sold, sorted by total price descending.

select category,sum(price) from sales
group by category
having count(*) > 1
order by sum(price) desc;
-- Show number of students per course (CourseID), including courses with NULL, sorted by count descending.

select courseid,count(*) from students
group by courseid
order by count(*) desc;
