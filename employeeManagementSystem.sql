CREATE DATABASE EMS;
use EMS;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10, 2),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    PRIMARY KEY (employee_id, from_date)
);

-- Sample Data to demonstrate all the queries.
INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'Engineering'),
    (2, 'Marketing'),
    (3, 'Finance');
    
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date)
VALUES
    (1, 'Ranjan', 'Kumar', 1, '2023-05-15'),
    (2, 'Dharmendra', 'Singh', 2, '2022-11-20'),
    (3, 'Manish', 'Reddy', 1, '2023-01-10'),
    (4, 'Rahul', 'Gupta', 3, '2022-08-03'),
    (5, 'Goverdhan', 'Kammireddy', 2, '2023-04-25');

INSERT INTO salaries (employee_id, salary, from_date, to_date)
VALUES
    (1, 60000, '2023-05-15', '2024-05-14'),
    (2, 55000, '2022-11-20', '2023-11-19'),
    (3, 65000, '2023-01-10', '2024-01-09'),
    (4, 70000, '2022-08-03', '2023-08-02'),
    (5, 60000, '2023-04-25', '2024-04-24');


-- SQL Queries
-- Query 1: Find all employees who have been hired in the last year.
-- SELECT *
-- FROM employees
-- WHERE hire_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR);
SELECT *
FROM employees
WHERE YEAR(hire_date) = 2023;


-- Query 2: Calculate the total salary expenditure for each department.
SELECT d.department_name, SUM(s.salary) AS total_salary_expenditure
FROM departments d
JOIN employees e ON d.department_id = e.department_id
JOIN salaries s ON e.employee_id = s.employee_id
GROUP BY d.department_name;

-- Query 3: Find the top 5 highest-paid employees along with their department names.
SELECT e.first_name, e.last_name, d.department_name, s.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN salaries s ON e.employee_id = s.employee_id
ORDER BY s.salary DESC
LIMIT 5;
describe salaries;