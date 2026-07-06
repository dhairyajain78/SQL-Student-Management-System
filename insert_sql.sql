-- ==========================================================
-- File: insert_sql(2).sql
-- Project: Student Management System
-- Description: SQL script with explanatory comments.
-- ==========================================================

-- Select the database for subsequent operations.
use database_db;

-- Insert new records into the table.
insert into student (Student_ID , Name , Age , Email , City ) values
(1, 'Rahul Sharma', 20, 'rahul.sharma@email.com', 'Jaipur'),
(2, 'Priya Verma', 21, 'priya.verma@email.com', 'Delhi'),
(3, 'Amit Singh', 19, 'amit.singh@email.com', 'Pune'),
(4, 'Neha Gupta', 22, 'neha.gupta@email.com', 'Pune'),
(5, 'Arjun Mehta', 20, 'arjun.mehta@email.com', 'Ahmedabad'),
(6, 'Sneha Jain', 21, 'sneha.jain@email.com', 'Indore'),
(7, 'Vikas Kumar', 23, 'vikas.kumar@email.com', 'Chandigarh'),
(8, 'Ananya Patel', 20, 'ananya.patel@email.com', 'Jaipur'),
(9, 'Rohit Yadav', 22, 'rohit.yadav@email.com', 'Jaipur'),
(10, 'Kavya Mishra', 19, 'kavya.mishra@email.com', 'Chandigarh');

-- Insert new records into the table.
insert into course (Course_ID , Course_Name , Course_Fee ) values 
(101, 'Python Programming', 5000),
(102, 'Data Structures', 6000),
(103, 'Database Management Systems', 5500),
(104, 'Web Development', 7000),
(105, 'Machine Learning', 10000),
(106, 'Artificial Intelligence', 12000),
(107, 'Cloud Computing', 8000),
(108, 'Cyber Security', 9000),
(109, 'Software Engineering', 6500),
(110, 'Computer Networks', 6000);

-- Insert new records into the table.
insert into enrollment ( Student_ID , Course_ID ) values
(1, 101),
(1, 102),
(2, 101),
(2, 103),
(3, 104),
(3, 105),
(4, 102),
(4, 106),
(5, 103),
(5, 107),
(6, 104),
(6, 108),
(7, 105),
(7, 109),
(8, 106),
(8, 110),
(9, 107),
(9, 101),
(10, 108),
(10, 102);

