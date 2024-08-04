--time and date--

show timezone

CREATE TABLE timezones(
	ts TIMESTAMP WITHOUT TIME ZONE,
	tz TIMESTAMP WITH TIME ZONE
)

select * from timezones

INSERT INTO timezones VALUES(
	TIMESTAMP WITHOUT TIME ZONE '2023-03-07 10:50',
	TIMESTAMP WITH TIME ZONE '2023-03-07 10:50'
)

--date operations--
	
select now() :: date;
select current_date


select to_char (current_date , 'dd/mm/yy')

select to_char(current_date,'DDD')

select to_char(current_date,'ww')

select age(date'1800-01-01')
--224 years 6 months 11 days--

select age(date '1992/11/13' , date ' 1800/01/01')

select extract(day from date '1992/11/13') as day

select extract(month from date '1992/11/13') as month

select extract(year from date '1992/11/13') as year

select date_trunc('year' , date'1992/11/13')

--------------------
select AGE(birth_date), * from employees
where extract(year from AGE(birth_date))>60;

select count(emp_no) from employees
where extract(month from hire_date) = 2;

---------------------

--how many employees born in november--

select count(emp_no) from employees
where extract(month from hire_date) = 11;

--who is the oldest emplyoee--

select max(age(birth_date))  from employees;

select max(salary) from salaries

select *,
    max(salary) over()
    from salaries

select *,
max(salary) over()
from salaries
limit 100

select *,
max (salary) over()
from salaries
where salary<70000

select *,
avg(salary) over()
from salaries

select *,
d.dept_name,
avg(salary) over()
from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)

select *,
	d.dept_name,
avg(salary) over(
	partition by d.dept_name
)

from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)










