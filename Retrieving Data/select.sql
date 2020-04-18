/*
Select all rows from specific columns in database table
*/
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM EMPLOYEES
;

/*
Select all rows and columns in database table
*/

SELECT *
from EMPLOYEES
;

/*
Using expressions
*/

SELECT employee_id, 12*salary
from employees
;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY*12
FROM EMPLOYEES
;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY+12
FROM EMPLOYEES
;

SELECT EMPLOYEE_ID, LAST_NAME, (SALARY-1000)*5
FROM EMPLOYEES
;

SELECT EMPLOYEE_ID, LAST_NAME, (SALARY + SALARY*0.15) / 1000
FROM EMPLOYEES
;

/* Column Alias */

Select 12*salary as "Annual_Salary"
from employees
;

/* Use of text concatenation operation */

select concat(first_name,' ',last_name) as full_name
from employees

/* Select distinct column values */

select distinct job_id
from employees;
select distinct department_id, job_id
from employees;

/* NULL value column */
select department_id
from employees;

/* Where condition 

SELECT ...
FROM table_name
WHERE condition ;

*/

select last_name, salary
from employees
where department_id = 80
;
select hire_date
from employees
where hire_date > '1994-02-17';

select hire_date
from employees
where hire_date = '1994-06-07';

select *
from employees
where manager_id is NULL;

/* Range Conditions */

select last_name, salary
from employees
where salary between 5000 and 10000;

select last_name, salary
from employees
WHERE hire_date BETWEEN '1994-01-01' AND '1998-12-31'
;

/* Joining multiple where clause */

select last_name, salary
from employees
where salary>5000 and department_id = 80
;

select last_name, salary
from employees
where salary>5000 and job_id = 'SA_REP'
;

select last_name, salary
from employees
where salary>5000 and department_id is not NULL
;

/* Pattern Matching */

select *
from employees
where first_name like '%s%'
;
/* empty or more characters*/

select *
from employees
where first_name like '_s%'
/* Exactly one character */

/* order by asc, desc */

/*

SELECT ...
FROM table_name
WHERE ...
ORDER BY Column1 [ASC | DESC], Column2 [ASC | DESC], ...

*/

select salary
from employees
order by salary desc;

