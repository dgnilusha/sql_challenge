
#resubmit the assignment

CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(20) NOT NULL
);


CREATE TABLE dept_emp (
	emp_no INT foreign key,
	dept_no varchar(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


CREATE TABLE dept_manager (
	dept_no varchar(5),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id varchar(7),
	birth_date date,
	first_name varchar(10) NOT NULL, 
	last_name varchar(20) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date
);	


CREATE TABLE salaries (
	emp_no INT,
	salary int,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
	title_id varchar PRIMARY KEY,
	title varchar(7) NOT NULL
);

select *
from salaries;


--Q1 answer
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s ON e.emp_no = s.emp_no;

--Q2 answer
select first_name, last_name, hire_date
from employees 
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'

--Q3
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;


SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON d.dept_no = dm.dept_no
JOIN employees e ON e.emp_no = dm.emp_no;

--Q4
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no;

--Q5 answer

select first_name, last_name, sex
from employees 
where first_name = 'Hercules' and last_name LIKE 'B%';

--Q6 answer
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' ;

--Q 6 testing
--List each employee in the Sales department, including their employee number, 
--last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees As e
inner JOIN dept_emp  As de ON (e.emp_no = de.emp_no)
inner JOIN departments As d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';


--Q7 answer
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON d.dept_no = de.dept_no 
WHERE d.dept_name IN ('Sales', 'Development');

--Q8 anwser
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

--










CREATE TABLE employees (
	emp_no	INT PRIMARY KEY,
	emp_title_id varchar(7),
	birth_date date,
	first_name varchar(10) not null, 
	last_name varchar(20) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date
);	

CREATE TABLE salaries (
	emp_no	INT PRIMARY KEY,
	salary int
);


CREATE TABLE titles (
	title_id varchar PRIMARY KEY,
	title varchar(7) NOT NULL
);

select *
from salaries;
