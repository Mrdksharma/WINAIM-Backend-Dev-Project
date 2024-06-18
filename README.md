# WINAIM-Backend-Dev-Project
This project exercises reinforced the importance of structured database design and proficient SQL query writing skills in handling complex data relationships and extracting actionable insights from relational databases.
# Output Screenshot:
#### Screenshot 1:
![WhatsApp Image 2024-06-18 at 06 30 43](https://github.com/Mrdksharma/WINAIM-Backend-Dev-Project/assets/120471109/ff1781fe-a1d6-4d5a-b9f9-8eca90b122fa)

#### Screenshot 2:
![WhatsApp Image 2024-06-18 at 06 30 39](https://github.com/Mrdksharma/WINAIM-Backend-Dev-Project/assets/120471109/b735e177-5e1e-449b-a33e-badf2f573172)
### Explanation:

- The employees table includes columns for employee ID, first name, last name, department ID, and hire date. The department_id is a foreign key that references the departments table.
- The departments table includes columns for department ID and department name.
- The salaries table includes columns for employee ID, salary, from date, and to date. The primary key is a composite key consisting of employee_id and from_date. The employee_id is a foreign key that references the employees table.

#### Screenshot 3: Inserting Sample dataset into table to demonstrate all three queries.
![WhatsApp Image 2024-06-18 at 06 30 39 (1)](https://github.com/Mrdksharma/WINAIM-Backend-Dev-Project/assets/120471109/13621841-0d74-456e-8beb-9062ab7cc8dc)

#### Screenshot 4:
![WhatsApp Image 2024-06-18 at 06 30 43 (1)](https://github.com/Mrdksharma/WINAIM-Backend-Dev-Project/assets/120471109/e26440a6-6195-44a2-8ea3-26e8fc0b2e72)

## SQL Queries:
## Query 1: Find all employees who have been hired in the last year.
### Explanation:

- This query selects the employee ID, first name, last name, and hire date from the employees table.
- The WHERE clause filters the results to include only employees who have been hired within the last year by comparing the hire_date with the current date minus one year.

## Query 2: Calculate the total salary expenditure for each department.

### Explanation:

- This query selects the department ID, department name, and the total salary expenditure for each department.
- It joins the employees table with the departments table on department_id and the salaries table on employee_id.
- The SUM function calculates the total salary for each department.
- The GROUP BY clause groups the results by department ID and department name to calculate the total salary expenditure per department.

## Query 3: Find the top 5 highest-paid employees along with their department names.

### Explanation:

- This query selects the employee ID, first name, last name, department name, and salary of the top 5 highest-paid employees.
- It joins the employees table with the departments table on department_id and the salaries table on employee_id.
- The ORDER BY clause sorts the results by salary in descending order.
- The LIMIT clause restricts the result set to the top 5 records.

#### Screenshot 5:
![WhatsApp Image 2024-06-18 at 06 30 40](https://github.com/Mrdksharma/WINAIM-Backend-Dev-Project/assets/120471109/0a7c0465-8f0c-4dbc-9d01-08b14d0357c3)
