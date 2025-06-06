CREATE TABLE employees (
    employee_id SERIAL PRIMARY key, 
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);
CREATE TABLE departments (
    department_id SERIAL PRIMARY key,
    department_name VARCHAR(50)
);
INSERT INTO departments (department_name) VALUES 
('Human Resources'),
('Engineering'),
('Sales'),
('Marketing'),
('Finance'),
('IT Support'),
('Legal'),
('Customer Service'),
('Operations'),
('Research and Development');



INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('Alice Johnson', 1, 55000.00, '2021-05-12'),
('Bob Smith', 2, 72000.00, '2020-03-18'),
('Carol Davis', 3, 60000.00, '2022-01-25'),
('David Wilson', 4, 58000.00, '2021-07-10'),
('Eva Brown', 5, 69000.00, '2019-09-03'),
('Frank Moore', 6, 52000.00, '2023-02-11'),
('Grace Taylor', 7, 75000.00, '2020-11-28'),
('Henry Anderson', 8, 50000.00, '2022-06-15'),
('Ivy Thomas', 9, 64000.00, '2021-04-07'),
('Jake Martin', 10, 71000.00, '2020-12-20');

SELECT * FROM employees;
SELECT count(*) from employees;

CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) from employees;
DELETE from employees where employee_id=12
$$

SELECT emp_count();

select * from employees


CREATE OR REPLACE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$

DELETE from employees WHERE employee_id=12;
$$

SELECT delete_emp();



--how to use parameter 
CREATE OR REPLACE FUNCTION delete_emp_with_parameter(p_emp_id int)
RETURNS void
LANGUAGE SQL
AS
$$

DELETE from employees where employee_id=p_emp_id;
$$





CREATE Procedure remove_emp_var()
LANGUAGE plpgsql
AS 
$$

DECLARE
    test_var int;
 BEGIN
    SELECT employee_id INTO test_var FROM employees WHERE employee_id =121;
    DELETE FROM employees WHERE employee_id = test_var;
 END  
$$;
call remove_emp_var();


select * from employees;