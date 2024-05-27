create table employees(
	emp_no int primary key,
	emp_title_id varchar(50) references titles(title_id),
	birth_date date not null ,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	sex char(2) not null,
	hire_date date not null
	
)
-- table title
create table titles(
	title_id varchar(255) primary key ,
	title varchar(255) 
	
)
-- table salary
create table salaries(
	emp_no int references employees(emp_no) not null,
	salary bigint not null
	
)
-- table dept_manager

create table dept_manager(
	dept_no VARCHAR(4) REFERENCES departments(dept_no),
    emp_no INT REFERENCES employees(emp_no),
	primary key(dept_no, emp_no)
)
-- table departments
	
create table departments(
	dept_no varchar(50) primary key not null,
	dept_name varchar(225) not null
)
-- table dept_emp
	
create table dept_emp(
	emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR(4) REFERENCES departments(dept_no),
	primary key(emp_no, dept_no)
	
)

