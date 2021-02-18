Create table titles (
	title_id varchar not null,
	title varchar not null, 
	primary key (title_id)
);

Create table employees (
	emp_no int not null, 
	emp_title_id varchar not null, 
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null, 
	sex varchar not null,
	hire_date date not null, 
	foreign key (emp_title_id) references titles(title_id),
	primary key (emp_no)
);

Create table departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
);

Create table dept_manager (
	dept_no varchar not null, 
	emp_no int not null, 
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (dept_no, emp_no)
);

Create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no)
);

Create table dept_emp (
	emp_no int not null, 
	dept_no varchar not null, 
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (dept_no, emp_no)
);


select * from titles
select * from employees
select * from departments
select * from dept_manager
select * from salaries
select * from dept_emp

COPY titles
FROM '/Users/estherkim/public/titles.csv'
DELIMITER ',' CSV HEADER;

COPY employees
FROM '/Users/estherkim/public/employees.csv'
DELIMITER ',' CSV HEADER;

COPY departments
FROM '/Users/estherkim/public/departments.csv'
DELIMITER ',' CSV HEADER;

COPY dept_manager
FROM '/Users/estherkim/public/dept_manager.csv'
DELIMITER ',' CSV HEADER;

COPY salaries
FROM '/Users/estherkim/public/salaries.csv'
DELIMITER ',' CSV HEADER;

COPY dept_emp
FROM '/Users/estherkim/public/dept_emp.csv'
DELIMITER ',' CSV HEADER;

select * from titles
select * from employees
select * from departments
select * from dept_manager
select * from salaries
select * from dept_emp
