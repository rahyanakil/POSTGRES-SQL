CREATE TABLE employees (
    employee_id SERIAL PRIMARY key, 
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

create table departments (
    department_id SERIAL PRIMARY key,
    department_name VARCHAR(50)
);

drop table employees;
drop table 