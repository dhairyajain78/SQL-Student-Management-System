-- ==========================================================
-- File: schema_sql(2).sql
-- Project: Student Management System
-- Description: SQL script with explanatory comments.
-- ==========================================================

-- Create the project database if it does not already exist.
create database if not exists database_db;

-- Select the database for subsequent operations.
use database_db;

-- Create the student table and define its columns and constraints.
create table if not exists student (
Student_ID int primary key auto_increment , 
Name varchar(50) , 
Age int not null check( 0 < age < 100),
Email varchar(50) unique not null,
City varchar(50) not null ,
Enrollment_Date timestamp default current_timestamp
);

-- Create the course table and define its columns and constraints.
create table if not exists course (
Course_ID int primary key  auto_increment , 
Course_Name  varchar(100) not null , 
Course_Fee decimal(10,2) not null 
);

-- Create the enrollment table and define its columns and constraints.
create table if not exists enrollment (
Enrollment_ID int primary key auto_increment , 
Course_ID int not null , 
Student_ID int not null , 
Enrollment_Date timestamp default current_timestamp  , 
foreign key(Student_ID) references student(Student_ID) on delete cascade on update cascade, 
foreign key(Course_ID) references course(Course_ID) on delete cascade on update cascade , 
unique (Course_ID , Student_ID)
);

-- Execute the following SQL statement.
-- alter table course modify column Course_Name varchar(100);

-- Remove the specified tables from the database.
drop table course , enrollment , student;

