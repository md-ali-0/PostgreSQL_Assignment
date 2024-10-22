-- Active: 1729624209460@@127.0.0.1@5432@university_db@public

-- 1. Database Setup
CREATE DATABASE university_db

-- 2. Table Creation:

-- Create a "students" table with the following fields:
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    email VARCHAR(250) UNIQUE NOT NULL,
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(20)
)

-- Create a "courses" table with the following fields:
CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50),
    credits INT
)

-- Create an "enrollment" table with the following fields:
CREATE TABLE enrollment(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
)