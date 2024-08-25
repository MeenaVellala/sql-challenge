---1. List the employee number, last name, first name, sex, and salary of each employee
--For this we will use both the employee table and the salary table 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
s.emp_no = e.emp_no;

---2. List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees 
where extract(year from hire_date) = 1986;

---3. List the manager of each department along with their department number, department name, employee number, last name, and first name
select d.dept_no, d.dept_name, dm.emp_no, e.last_name,e.first_name
from departments as d
inner join dept_manager as dm on
d.dept_no = dm.dept_no
inner join employees as e on
dm.emp_no = e.emp_no

---4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
select d.dept_no,  de.emp_no, e.last_name,e.first_name, d.dept_name
from departments as d
inner join dept_emp as de on
d.dept_no = de.dept_no
inner join employees as e on
de.emp_no = e.emp_no

---5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees 
where first_name = 'Hercules' and (lower(last_name) like 'b%') ;

---6. List each employee in the Sales department, including their employee number, last name, and first name.
select de.emp_no, e.last_name,e.first_name, d.dept_name
from departments as d
inner join dept_emp as de on
d.dept_no = de.dept_no
inner join employees as e on
de.emp_no = e.emp_no
where d.dept_name = 'Sales' ;

---7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name,e.first_name, d.dept_name
from departments as d
inner join dept_emp as de on
d.dept_no = de.dept_no
inner join employees as e on
de.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

---8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name,count(last_name) as frequency 
from employees 
group by last_name
order by frequency desc;