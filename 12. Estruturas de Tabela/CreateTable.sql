-- CREATE TABLE é usado para criar novas tabelas.

# CREATE TABLE courses
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
);

# CREATE TABLE trainings
CREATE TABLE trainings (
    employee_id INT,
    course_id INT,
    taken_date DATE,
    PRIMARY KEY (employee_id, course_id)
);