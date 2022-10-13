--Employee Database Challenge
--Deliverable 1
SELECT e.emp_no, 
e.first_name, 
e.last_name, 
ti.title,
ti.from_date, 
ti.to_date

INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (ti.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;


--Number of Employees by job title who are about to retire
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;


--Deliverable 2
--Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date, 
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;


-- Deliverable 3
--Create Unique Titles by Department
SELECT DISTINCT ON (rt.emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
d.dept_name
INTO unique_titles_by_dept
FROM retirement_titles as rt
INNER JOIN dept_emp as de
ON (rt.emp_no = de.emp_no)
INNER JOIN departments as d
ON (d.dept_no = de.dept_no)

--Roles to fill
SELECT ut.dept_name, ut.title, COUNT(ut.title)
INTO roles_to_fill
FROM (SELECT title, dept_name from unique_titles_by_dept) as ut
GROUP BY ut.dept_name, ut.title
ORDER BY ut.dept_name DESC;

--Qualified, retirement-ready employees
SELECT ut.dept_name, ut.title, COUNT(ut.title)
INTO qualified_staff
FROM (SELECT title, dept_name from unique_titles_by_dept) as ut
WHERE ut.title IN ('Senior Engineer', 'Senior Staff', 'Technique Leader')
GROUP BY ut.dept_name, ut.title
ORDER BY ut.dept_name DESC;





