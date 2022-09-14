--Create Tables

create table departments(
dept_no VARCHAR(5),
	dept_name VARCHAR(20) NOT NULL
    ,PRIMARY KEY(dept_no)
);


create table titles(
title_id VARCHAR(5),
	title VARCHAR(20) NOT NULL
    ,PRIMARY KEY(title_id)
);

create table employees(
emp_no int,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(15) NOT NULL,
	last_name VARCHAR(20)NOT NULL,
	sex VARCHAR(1)NOT NULL,
	hire_date date  NOT NULL
    ,PRIMARY KEY(emp_no)
	,FOREIGN KEY (emp_title_id) references titles(title_id)
);


create table dept_emp(
	emp_no int, dept_no VARCHAR(5) NOT NULL
    ,FOREIGN KEY (emp_no) references employees(emp_no)
	,FOREIGN KEY (dept_no) references departments(dept_no)
	,PRIMARY KEY (emp_no,dept_no)
);

create table dept_manager(
	dept_no VARCHAR(5) NOT NULL,
	emp_no int
	,FOREIGN KEY (emp_no) references employees(emp_no)
	,FOREIGN KEY (dept_no) references departments(dept_no)
	,PRIMARY KEY (emp_no,dept_no)
);

create table salaries(
	salary int NOT NULL,
	emp_no int
	,FOREIGN KEY (emp_no) references employees(emp_no)
	,PRIMARY KEY (emp_no,salary)
);


