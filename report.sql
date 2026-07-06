-- ==========================================================
-- File: report(2).sql
-- Project: Student Management System
-- Description: SQL script with explanatory comments.
-- ==========================================================

-- Select the database for subsequent operations.
use database_db;

-- Count matching records.
select count(*) as total_students from student;

-- Count matching records.
select count(*) as total_courses from course;

-- Count matching records.
select Student_Id , count(Enrollment_Id) as total_enrollment 
from enrollment group by Student_Id;

-- Retrieve data by combining records from multiple related tables.
select c.Course_Id , c.Course_Name , count(Enrollment_Id) as total_enrollment 
from enrollment e join course c on 
e.Course_Id = c.Course_Id group by
c.Course_Id , c.Course_Name
order by total_enrollment desc
limit 1;

-- Count matching records.
select City , count(City) as total_students 
from student group by City;

-- Retrieve data by combining records from multiple related tables.
select s.Student_Id , s.Name , e.Course_Id , c.Course_Name from 
enrollment e join student s on 
e.Student_Id = s.Student_Id join 
course c on c.Course_Id = e.Course_Id
order by s.Student_Id , s.Name;

-- Retrieve data by combining records from multiple related tables.
select Course_Name , count(Student_Id) as total_students from 
course c join enrollment e on
c.Course_Id = e.Course_Id group by Course_Name 
having total_students > 2;

