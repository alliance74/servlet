-- Create database
CREATE DATABASE IF NOT EXISTS student_db;

-- Use the database
USE student_db;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    course VARCHAR(100)
);

-- Insert sample data
INSERT INTO students (name, email, course) VALUES
('John Doe', 'john.doe@example.com', 'Computer Science'),
('Jane Smith', 'jane.smith@example.com', 'Information Technology'),
('Mike Johnson', 'mike.johnson@example.com', 'Software Engineering');
