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

-- Insert the following sample data into the "students" table:

INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
    VALUES ('Sameer', 21, 'sameer@example.com', 48, 60, NULL)
            ('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
            ('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
            ('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
            ('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
            ('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);
