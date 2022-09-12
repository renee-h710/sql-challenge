--Create Tables

create table departments(
dept_no VARCHAR(5),
	dept_name VARCHAR(20)
);

create table dept_emp(
	emp_no int, dept_no VARCHAR(5)

);

create table dept_manager(
dept_no VARCHAR(5),
	emp_no int
);

create table employees(
emp_no int,
	emp_title_id VARCHAR(5),
	birth_date date,
	first_name VARCHAR(15),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date date

);

create table salaries(
salary int,
	emp_no int
);

create table titles(
title_id VARCHAR(5),
	title VARCHAR(20)
);


