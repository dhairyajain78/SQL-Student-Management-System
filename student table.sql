-- ==========================================================
-- File: student table(2).sql
-- Project: Student Management System
-- Description: SQL script with explanatory comments.
-- ==========================================================

-- Select the database for subsequent operations.
use database_db;

-- Retrieve records from the table.
select * from student;

-- Retrieve records from the table.
select * from student where Student_ID = 6;

-- Retrieve records from the table.
select Student_ID , Name , Age from student where City ='Jaipur';

-- Retrieve records from the table.
select * from student where Age = 20;

-- Retrieve records from the table.
select * from student order by Name;

-- Retrieve records from the table.
select * from student order by Name , Age;

-- Retrieve records from the table.
select * from student where City in ('Jaipur' , 'chandigarh');

-- Retrieve records from the table.
select * from student where Age >20;

-- Retrieve records from the table.
select * from student where Age between 18 and 20;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , c.Course_Id , s.Name , c.Course_Name  from 
enrollment e inner join  student s  on
e.Student_Id = s.Student_Id 
inner join course c on
e.Course_Id = c.Course_Id;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , c.Course_Id , s.Name , c.Course_Name , s.Age   from 
enrollment e inner join  student s  on
e.Student_Id = s.Student_Id 
inner join course c on
e.Course_Id = c.Course_Id
where Age >19;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , e.Course_Id , s.Name   from 
enrollment e inner join  student s  on
e.Student_Id = s.Student_Id;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , c.Course_Id , s.Name , s.City from 
enrollment e inner join  student s  on
e.Student_Id = s.Student_Id 
inner join course c on
e.Course_Id = c.Course_Id 
where c.Course_Name = 'Python Programming';

-- Retrieve data by combining records from multiple related tables.
select Course_Name , count(e.Student_Id) as total_students from
enrollment e inner join course c 
on e.Course_Id = c.Course_Id
group by Course_Name 
order by total_students DESC;

-- Retrieve data by combining records from multiple related tables.
select c.Course_Name , c.Course_Fee , count(e.Student_Id) as total_students , 
c.Course_Fee * count(e.Student_Id) as total_fee from
enrollment e inner join course c on e.Course_Id = c.Course_Id 
group by c.Course_Id;

-- Retrieve data by combining records from multiple related tables.
SELECT 
    s.Student_Id,
    s.Name,
    COUNT(e.Course_Id) AS total_courses
FROM enrollment e
JOIN student s ON e.Student_Id = s.Student_Id
GROUP BY s.Student_Id, s.Name
HAVING COUNT(e.Course_Id) > 1
ORDER BY total_courses DESC;

-- Retrieve data by combining records from multiple related tables.
select c.Course_Id , c.Course_Name from 
enrollment e inner join course c 
on e.Course_Id = c.Course_Id 
where e.Enrollment_Id = null;

-- Retrieve data by combining records from multiple related tables.
select c.Course_Id , c.Course_Name , count(e.Student_Id) as total_enrollment 
from 
enrollment e join course c 
on e.Course_Id = c.Course_Id 
group by c.Course_Id, c.Course_Name
order by total_enrollment Desc
limit 1;

-- Execute the following SQL statement.
set sql_safe_updates =0;

-- Update existing records based on the specified condition.
update student set City = 'Manali' where Student_ID = 10;

-- Update existing records based on the specified condition.
update student set Email = 'suvek@gmail.com' , Age =21 where Student_ID = 3;

-- Update existing records based on the specified condition.
update enrollment set Course_Id = 104 where Student_Id =2 and Course_Id = 101;

-- Modify the structure of an existing table.
alter table student add column Phone_No int;

-- Delete records matching the specified condition.
delete from student where Student_Id =4;

-- Delete records matching the specified condition.
delete from enrollment where Student_Id =2 and Course_Id = 104;

