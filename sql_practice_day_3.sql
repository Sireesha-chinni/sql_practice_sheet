-- Day 3 answer sheet --

-- Insert a new student: (11, 'Neha', 22, 91, 'Pune', 102).
 
 insert students (studentId,name,age,marks,city,courseID) values (11,'Neha',22,91,'pune',102);
 
 -- View all columns and rows of Students.
 select * from students;
 
 -- View only Name and Marks from Students.
 
 select name,marks from students;
 
 -- View students with Marks > 80.
 
 select * from students where marks>80;
 
 -- Change the City of student StudentID = 4 to 'Delhi'.
 
 update students set city ='Delhi' where studentid =4;
 
 -- Delete the student with StudentID = 11 (the one you inserted in above)
 
 delete from students where studentid =11;
 
 -- Show distinct cities from the Students table.
 
 select distinct city from students;
 
 -- Show distinct departments from Employees.
 
 select distinct dept from employees;
 
 -- Display Name as Student_Name and Marks as Score using alias.
 
 select name as student_name, marks as Score from students;
 
 -- Show all students from 'Hyderabad'.
 
 select * from students where city ='Hyderabad';
 
 -- Show all students with Age > 20 AND Marks > 80.
 
 select * from students where age >20 and marks>80;
 
 -- Show all students from 'Hyderabad' OR 'Mumbai'.
 
 select * from students where city= 'Hyderabad' or city='Mumbai';
 
 -- Show all students who are NOT from 'Chennai'
 
 select * from students where city != 'chennai';
 
 -- Show each student's marks increased by 5, aliased as New_Marks.
 
 select name,marks+5 as New_Marks from students;
 
 -- Show employees with Salary >= 40000.
 
 select * from employees where salary >= 40000;
 
 -- Show students whose Marks is NULL.
 
 select * from students where marks is null;
 
 -- Show students whose Marks is NOT NULL.
 
  select * from students where marks is not null;
  
  -- Show students from 'Hyderabad' or 'Chennai' using the IN operator.
  select * from students where city in ('chennai','hyderabad');
  
  -- Show students who are NOT from 'Mumbai' using NOT IN.
  
  select * from students where city not in ('Mumbai');
  
  -- Show students with Marks between 70 and 90 (inclusive) using BETWEEN.
  
  select * from students where marks between 70 and 90;
  
  -- Show students with Marks NOT between 70 and 90.
  
  select * from students where marks not between 70 and 90;
  
  -- Show employees whose Department is 'IT' or 'HR' using IN.
  
  select * from employees where dept in ('it','HR');
  
  -- Show employees with Bonus IS NULL.
  
  select * from employees where bonus is null;
  
  -- Write one query combining WHERE, AND, and BETWEEN: students from 'Hyderabad' AND Marks between 60 and 100.
  
  select * from students 
  where city = 'Hyderabad' 
  And marks between 60 and 100;