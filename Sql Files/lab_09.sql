-- 1.
select department_id from departments
minus
select department_id from employees
        where job_id = 'ST_CLERK';

-- 2.
select country_id, country_name from countries
minus
select l.country_id, c.country_name from locations l join countries c
on (l.country_id = c.country_id) join departments d
on d.location_id = l.location_id;

-- 3.
select employee_id, job_id, department_id from employees
        where department_id = 50
        union all
        select employee_id, job_id, department_id
        from employees
        where department_id = 80;
    
-- 4.
select employee_id from employees
        where job_id = 'SA_REP'
        intersect
        select employee_id
        from employees
        where department_id = 80;
        
-- 5.
select last_name, department_id, to_char(null) dept_name
        from employees
        union
        select to_char(null), department_id, department_name
        from departments;

