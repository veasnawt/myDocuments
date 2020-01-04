-- 1.
undefine input_name

select last_name, hire_date from employees
        where department_id = (select department_id
        from employees where last_name = '&&input_name')
        and last_name <> '&input_name';
        
-- 2. 
select employee_id, last_name, salary from employees
        where salary > (select avg(salary) from employees)
        order by salary;

-- 3.
select employee_id, last_name from employees
        where department_id in (select department_id from employees
        where last_name like '%u%');
    
-- 4.
select last_name, department_id, job_id from employees
        where department_id in (select department_id from departments
        where location_id = 1700);
        
-- 5.
select last_name, salary from employees
        where manager_id in (select employee_id from employees
        where last_name = 'King');
        
-- 6.
select department_id, last_name, job_id from employees
        where department_id in (select department_id from departments
        where department_name = 'Executive');
        
-- 7.
select last_name from employees
        where salary > any (select salary from employees 
        where department_id = 60);

-- 8.
select employee_id, last_name, salary from employees
        where salary > (select avg(salary) from employees)
        and department_id in (select department_id from employees
        where last_name like '%u%');
    