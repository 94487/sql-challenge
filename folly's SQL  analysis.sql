-- let's look up the entire table employees

select *from employees

-- list the employee number, last name, first name, sex, and salary of each employee
-- overview of salary table

 select *from salaries

-- now let's join these two tables 
	
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no =salaries.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986

select first_name, last_name,(hire_date)
from employees
where hire_date between '1/1/1986' and '12/31/1986'
order by hire_date 

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

select  departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
from departments
join dept_manager on departments.dept_no =dept_manager.dept_no
join employees
on employees.emp_no =dept_manager.emp_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)

select dept_emp.emp_no , departments.dept_name, employees.last_name, employees.last_name, departments.dept_name
from dept_emp
join employees on dept_emp.emp_no =employees.emp_no
join departments
on departments.dept_no = dept_emp.dept_no

--  List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

select first_name,last_name ,sex 
from employees
where first_name = 'Hercules'
and last_name like 'B%'



	
select *from departments	
select*from dept_manager

select *from titles

select *from employees

select* from dept_emp