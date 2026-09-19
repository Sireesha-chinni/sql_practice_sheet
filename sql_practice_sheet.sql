CREATE DATABASE SQLPracticeDB;
USE SQLPracticeDB;

-- Employees
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    ManagerID INT,
    JoinDate DATE,
    Bonus DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1,  'Ravi',   'IT',    45000, NULL, '2020-01-10', 2000),
(2,  'Sita',   'IT',    52000, 1,    '2020-03-15', 3000),
(3,  'Amit',   'HR',    30000, NULL, '2019-07-01', NULL),
(4,  'Kiran',  'HR',    28000, 3,    '2021-05-20', 1000),
(5,  'Anu',    'Sales', 35000, NULL, '2018-11-11', NULL),
(6,  'John',   'Sales', 32000, 5,    '2022-02-01', 1500),
(7,  'Meena',  'IT',    48000, 1,    '2021-09-09', 2500),
(8,  'Rahul',  'Sales', 31000, 5,    '2020-12-12', NULL),
(9,  'Priya',  'HR',    33000, 3,    '2019-04-04', 1200),
(10, 'Vikram', 'IT',    55000, 1,    '2017-06-06', 4000);

-- Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Marks INT,
    City VARCHAR(30),
    CourseID INT
);

INSERT INTO Students VALUES
(1,  'Ravi',  20, 85,   'Hyderabad', 101),
(2,  'Sita',  21, 92,   'Chennai',   102),
(3,  'Aman',  22, 78,   'Hyderabad', 103),
(4,  'Anil',  20, NULL, 'Mumbai',    NULL),
(5,  'Kiran', 23, 70,   'Bangalore', 101),
(6,  'John',  21, 88,   'Chennai',   NULL),
(7,  'Meena', 22, 95,   'Hyderabad', 102),
(8,  'Priya', 20, 60,   'Mumbai',    103),
(9,  'Rahul', 24, 55,   'Bangalore', 101),
(10, 'Divya', 23, 99,   'Chennai',   104);

-- Courses
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

INSERT INTO Courses VALUES
(101, 'Python'),
(102, 'Data Science'),
(103, 'Java'),
(104, 'AI'),
(105, 'Web Development');   -- no student takes this (for RIGHT/FULL join practice)

-- Departments (used for keys/FK/subquery practice)
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(30),
    Location VARCHAR(30)
);

INSERT INTO Departments VALUES
(10, 'IT',    'Hyderabad'),
(20, 'HR',    'Chennai'),
(30, 'Sales', 'Mumbai');

-- Sales (used for GROUP BY / HAVING / aggregates)
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(30),
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO Sales VALUES
(1, 'Mobile', 'Electronics', 15000, '2024-01-05'),
(2, 'TV',     'Electronics', 30000, '2024-01-10'),
(3, 'Shirt',  'Clothing',    1000,  '2024-01-15'),
(4, 'Laptop', 'Electronics', 55000, '2024-02-01'),
(5, 'Jeans',  'Clothing',    1500,  '2024-02-05'),
(6, 'Fridge', 'Electronics', 25000, '2024-02-10'),
(7, 'Shoes',  'Footwear',    2000,  '2024-02-15'),
(8, 'Watch',  'Accessories', 3000,  '2024-02-20');