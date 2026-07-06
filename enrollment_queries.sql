-- ==========================================================
-- File: enrollment table(3).sql
-- Project: Student Management System
-- Description: SQL script with explanatory comments.
-- ==========================================================

-- Select the database for subsequent operations.
use database_db;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , c.Course_Id , c.Course_Name , e.Enrollment_Date from 
enrollment e inner join course c on 
e.Course_Id = c.Course_Id 
join student s on
e.Student_Id = s.Student_Id;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , c.Course_Id , c.Course_Name , e.Enrollment_Date from 
enrollment e inner join course c on 
e.Course_Id = c.Course_Id 
join student s on
e.Student_Id = s.Student_Id 
order by e.Student_Id;

-- Retrieve data by combining records from multiple related tables.
select c.Course_Id , c.Course_Name , count(e.Enrollment_Id) as total_enrollment 
from enrollment e join course c on
e.Course_Id = c.Course_Id 
group by c.Course_Name , c.Course_Id
order by total_enrollment desc;

-- Retrieve data by combining records from multiple related tables.
select c.Course_Id , c.Course_Name , count(e.Student_Id) total_students from 
enrollment e join course c on
e.Course_Id = c.Course_Id
group by c.Course_Id , c.Course_Name 
order by total_students;

-- Retrieve data by combining records from multiple related tables.
select s.Name , s.Student_Id , count(e.Course_Id) as total_courses from
enrollment e join student s on 
e.Student_Id = s.Student_Id
group by s.Name , s.Student_Id
order by total_courses;

-- Retrieve data by combining records from multiple related tables.
select s.Name , s.Student_Id   from
enrollment e right join student s on 
e.Student_Id = s.Student_Id
where Enrollment_Id is null;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , c.Course_Id , c.Course_Name , e.Enrollment_Date from 
enrollment e join course c 
on e.Course_Id = c.Course_Id 
join student s
on e.Student_Id = s.Student_Id
order by Enrollment_Date 
limit 5;

-- Retrieve data by combining records from multiple related tables.
select  c.Course_Id ,c.Course_Name , count(s.Student_Id) as total_students , c.Course_Fee*count(s.Student_Id) as total_fee
from enrollment e join course c 
on e.Course_Id = c.Course_Id 
join student s
on e.Student_Id = s.Student_Id
group by c.Course_Id ,c.Course_Name
order by total_fee;

-- Retrieve records from the table.
select * from enrollment;

