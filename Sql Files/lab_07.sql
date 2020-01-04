-- 1.
select location_id, 
        street_address, 
        city,
        state_province,
        country_name
        from locations natural join countries;
        
-- 2.
select last_name, 
        department_id, 
        department_name
        from employees join departments
        using (department_id);
        
-- 3.
select e.last_name,
        e.job_id,
        e.department_id, 
        d.department_name
        from employees e join departments d
        on (e.department_id = d.department_id)
        join locations l using (location_id)
        where lower(l.city) = 'toronto';
        
-- 4.
select a.last_name as "Employee", 
        a.employee_id as "EMP#",
        b.last_name as "Manager",
        b.employee_id as "Mgr#"
        from employees a join employees b
        on (a.manager_id = b.employee_id);
        
-- 5.
select a.last_name as "Employee", 
        a.employee_id as "EMP#",
        b.last_name as "Manager",
        b.employee_id as "Mgr#"
        from employees a join employees b
        on (a.manager_id = b.manager_id);
        
-- 6.
select a.department_id as department, 
        a.last_name as employee,
        b.last_name as colleague
        from employees a join employees b
        on (a.department_id = b.department_id)
        where (a.employee_id <> b.employee_id)
        order by a.department_id,
                 a.last_name,
                 b.last_name;
                 
-- 7.
-- I can't find any table named jobs_grade!

desc jobs;

select e.last_name, 
        e.job_id,
        d.department_name,
        e.salary,
        j.job_title
        from employees e join departments d
        on (e.department_id = d.department_id)
        join jobs j
        on (e.salary between min_salary and max_salary);
        
-- 8.
select a.last_name, 
        a.hire_date
        from employees a join employees b
        on (b.last_name = 'Davies')
        where b.hire_date < a.hire_date;

-- 9.
select a.last_name, 
        a.hire_date,
        b.last_name,
        b.hire_date
        from employees a join employees b
        on (a.manager_id = b.manager_id)
        where a.hire_date < b.hire_date;
                    
        

        
        
        
        
