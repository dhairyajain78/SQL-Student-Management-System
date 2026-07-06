-- ==========================================================
-- File: course table(3).sql
-- Project: Student Management System
-- Description: SQL script with explanatory comments.
-- ==========================================================

-- Select the database for subsequent operations.
use database_db;

-- Insert new records into the table.
insert into course (Course_Id , Course_Name , Course_Fee) values 
(111 , 'Java Programming' , 7000 );

-- Update existing records based on the specified condition.
update course set Course_Fee = 6000 where Course_Id = 101;

-- Update existing records based on the specified condition.
update course set Course_Name = 'Java Programming' , Course_Fee =6999 where Course_Id = 103;

-- Update existing records based on the specified condition.
update course set Course_Id = 125 where Course_Name like 'Python %';

-- Modify the structure of an existing table.
alter table course add column course_duration varchar(50) default '1 month';

-- Delete records matching the specified condition.
delete from course where Course_Fee = 7000;

-- Delete records matching the specified condition.
delete from course where Course_Name in ('Cyber Security');

-- Retrieve records from the table.
select * from course;

-- Retrieve records from the table.
select * from course where Course_Id = 102;

-- Retrieve records from the table.
select Course_Name , Course_Fee from course where Course_Name like '%program%';

-- Retrieve records from the table.
select distinct Course_Name from course;

-- Retrieve records from the table.
select distinct Course_Fee from course;

-- Calculate the average value.
select avg(Course_Fee) as Average_Fee from course;

-- Retrieve records from the table.
select * from course where Course_Fee > 7000;

-- Retrieve records from the table.
select * from course order by Course_Name , Course_Fee;

