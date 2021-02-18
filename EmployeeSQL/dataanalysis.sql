-- Question 1
select emp_no, last_name, first_name, sex, salary from employees ee
left join (select emp_no as emp_num, salary from salaries) ss on ee.emp_no = ss.emp_num

--Question 2
select * from (select first_name, last_name, date_part('year', hire_date) as hire_year from employees) aa
where hire_year = '1986'

--Question 3
select dm.dept_no, dept_name, dm.emp_no, last_name, first_name from dept_manager dm
left join (select first_name, last_name, emp_no from employees) vv on dm.emp_no = vv.emp_no
left join (select * from departments ) dd on dd.dept_no = dm.dept_no

--Question 4
select emp_no, last_name, first_name, dept_name from (select em.emp_no, last_name, first_name, dept_no from employees em
left join dept_emp de on em.emp_no = de.emp_no) xx
	left join  departments dd on dd.dept_no = xx.dept_no
	
--Question 5 
select first_name, last_name, sex from employees
where first_name like 'Hercules%' and last_name like 'B%'

--Question 6 
select emp_no, last_name, first_name, dept_name from (select em.emp_no, last_name, first_name, dept_no from employees em
left join dept_emp de on em.emp_no = de.emp_no) xx
	left join  departments dd on dd.dept_no = xx.dept_no
	where dept_name = 'Sales'

--Question 7 
select emp_no, last_name, first_name, dept_name from (select em.emp_no, last_name, first_name, dept_no from employees em
left join dept_emp de on em.emp_no = de.emp_no) xx
	left join  departments dd on dd.dept_no = xx.dept_no
	where dept_name = 'Sales' or dept_name = 'Development'
	
--Question 8 
select last_name, count(last_name) from employees
group by last_name order by last_name desc




