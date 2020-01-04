-- 1.True

-- 2. False

-- 3. True

-- 4. 
select round(max(salary), 0) "Maximum",
       round(min(salary), 0) "Minimum", 
       round(sum(salary), 0) "Sum", 
       round(avg(salary), 0) "Average" 
       from employees;
       
-- 5. 
select job_id, 
        round(max(salary), 0) "Maximum",
        round(min(salary), 0) "Minimum",
        round(sum(salary), 0) "Sum",
        round(avg(salary), 0) "Average"
        from employees group by job_id;
        
-- 6.
select job_id, count(*) from employees group by job_id;

select job_id, count(*) from employees 
    where job_id = '&input_job_title'
    group by job_id;

-- 7.
select count(distinct manager_id) as "Number of managers" from employees;

-- 8.
select max(salary) - min(salary) as different from employees;

-- 9.
select manager_id, min(salary) from employees
    where manager_id is not null
    group by manager_id
    having min(salary) > 6000
    order by min(salary) desc;
    
-- 10.
select count(*) as total,
        sum(decode(to_char(hire_date, 'yyyy'), 2005,1,0)) as "2005",
        sum(decode(to_char(hire_date, 'yyyy'), 2006,1,0)) as "2006",
        sum(decode(to_char(hire_date, 'yyyy'), 2007,1,0)) as "2007",
        sum(decode(to_char(hire_date, 'yyyy'), 2008,1,0)) as "2008"
        from employees;
        
-- 11.
select job_id as "Job",
        sum(decode(department_id, 20, salary)) as "Dept 20",
        sum(decode(department_id, 50, salary)) as "Dept 50",
        sum(decode(department_id, 80, salary)) as "Dept 80",
        sum(decode(department_id, 90, salary)) as "Dept 90",
        sum(salary) as "Total" 
        from employees group by job_id;
        

