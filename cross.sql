CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);
CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);
-- Insert sample data into employees table
INSERT INTO employees VALUES
(1,'John Doe', 101);
INSERT INTO employees  VALUES
(2,'Jane Smith', 102);

INSERT INTO employees VALUES
(3,'Alice Johnson', 103);

INSERT INTO employees VALUES
(4,'Bob Brown', 104);

-- Insert sample data into departments table
INSERT INTO departments VALUES
(101, 'HR');    
INSERT INTO departments VALUES
(102, 'Finance');

SELECT * FROM employees;
SELECT * FROM departments;

DROP TABLE employees

--cross join
SELECT * FROM employees
CROSS JOIN departments; 

--natural join common columns thakte hobe 
SELECT * FROM employees
NATURAL JOIN departments;