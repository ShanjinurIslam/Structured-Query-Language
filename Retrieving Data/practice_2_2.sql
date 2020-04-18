select first_name, last_name
from employees
where hire_date <= '1998-01-01';

select country_id
from countries
where country_name in ('Canada','Germany','United Kingdom');

select *
from locations
where country_id in (select country_id
from countries
where country_name in ('Canada','Germany','United Kingdom'));

select first_name
from employees
where last_name like 'a%';

select first_name
from employees
where last_name like 's%n';

select department_name
from departments
where department_id in (select department_id
from employees
where manager_id = 100);

select concat(first_name,' ',last_name)
from employees
where job_id ='AD_PRES' and salary>= 23000;

select concat(first_name,' ',last_name)
from employees
where last_name not like '%s';

select first_name, last_name
from employees
where hire_date >= '1998-01-01';

select first_name, last_name
from employees
where hire_date between '1998-01-01' and '1998-12-31';