-1

select
employees.emp_no,
last_name,
first_name,
sex,
salary
from employees
join salaries on employees.emp_no = salaries.emp_no;

-2

select
first_name,
last_name,
hire_date
from employees
where EXTRACT(YEAR FROM hire_date) = 1986;

-3

select
first_name,
last_name,
employees.emp_no,
departments.dept_no,
dept_name
from employees
join titles on employees.emp_title = titles.title_id
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where title = 'Manager';

-4

select
first_name,
last_name,
employees.emp_no,
dept_name
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no

-5

select
first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-6

select
first_name,
last_name,
employees.emp_no,
dept_name
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where dept_name = 'Sales';

-7
select
first_name,
last_name,
employees.emp_no,
dept_name
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where dept_name = 'Development'
union
select
first_name,
last_name,
employees.emp_no,
dept_name
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where dept_name = 'Sales'

8.

select
last_name,
count(last_name)
from employees
group by last_name
order by count(last_name) desc;

