# sql-challenge

**Data Modeling**

After inspecting the CSV files, an Entity Relationship Diagram (ERD) of the tables is created. app.quickdatabasediagrams.com tool is used to sketch the ERD.

**Data Engineering:**

Keys:

title_id is unique, this is the primary key in the title table and is the foreign key in the employees table and named as emp_title_id.

emp_no in employees table is unique, that is, there is only one employee number per employee. Thus, emp_no is the primary key for employees table.

emp_no in dept_emp is a foreign key to the primary key emp_no in employees— that is, the values of emp_no in dept_emp match the values of the primary key emp_no in employees.

emp_no in salaries, and dept_manager are all foreign keys to the primary key emp_no in employees.

dept_no in departments is unique, that is, there is only one department number per department. Thus, dept_no is the primary key for departments.

dept_no in both dept_manager and dept_emp are foreign keys to the primary key dept_no in departments, since they matche the values of dept_no in departments.

**Data Types:**

***titles table:***

```1. title_id  is a VARCHAR since it is a string```

```2. title  is a VARCHAR since it is a string```

***employees table:***

```1. emp_no is an INT since it is a integer type number with no decimals```

```2. emp_title_id is a VARCHAR since it is a string```

```3. birth_date is a DATE since it is in YYYY-MM-DD format```

```4. first_name is a VARCHAR since it is a string```

```5. last_name is a VARCHAR since it is a string```

```6. sex is a VARCHAR since it is a letter```

```7. hire_date is a DATE since it is in YYYY-MM-DD format```

***departments table:***

```1. dept_no is a VARCHAR since it consists of one letter and whole numbers```

```2. dept_name is a VARCHAR since it is a string```

***dept_manager table:***

```1. dept_no is a VARCHAR since it consists of one letter and whole numbers```

```2. emp_no is an INT since it is a integer type number with no decimals```

***dept_emp table:***

```1. emp_no is an INT since it is a integer type number with no decimals```

```2. dept_no is a VARCHAR since it consists of one letter and whole numbers```

***salaries table:***

```1. emp_no is an INT since it is a integer type number with no decimals```

```2. salary is an INT since it is in number format with no decimals```

**Data Analysis**

After completing the data engineering, which involved the creation of six tables and the importing of CSV files, the following steps were taken to query the data and find the outputs

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
