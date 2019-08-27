create table departments (
	dept_no varchar not null, 
	dept_name varchar not null,
	Primary Key (dept_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	from_date date not null,
	to_date date not null,
	foreign key (dept_no) references departments (dept_no)
);

select 
create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null
);


create table employees (
	emp_no int not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender varchar not null,
	hire_date date not null
);

create table salaries(
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null	
);

create table titles(
	emp_no int not null,
	title varchar not null,
	from_date date not null,
	to_date date not null
);


select employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;

select * from   
employees where hire_date < '1987-01-01' and hire_date >= '1986-01-01';

select dept_manager.dept_no, 
dept_manager.emp_no,
dept_manager.from_date,
dept_manager.to_date,
employees.last_name,
employees.first_name
from dept_manager
inner join employees on
dept_manager.emp_no = employees.emp_no;

select *
from employees
where first_name = 'Hercules'
and last_name like 'B%' 


select *
from employees
count(last_name)
group by count.last_name


