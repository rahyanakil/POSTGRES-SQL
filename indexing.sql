--do to speed up queries

select* from employees;

select * from employees where employee_name= 'lan';

create INDEX idx_employees_last_name ON employees (employee_name);