-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (______) _____,
-- ______,
-- ______,
-- ______

-- INTO nameyourtable
-- FROM _______
-- WHERE _______
-- ORDER BY _____, _____ DESC;

-- Deliverable 1
-- Create retirement by titles table. 
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
Inner Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date between '01-01-1952' AND '12-31-1955')
Order By e.emp_no

--SELECT * FROM retirement_titles

--Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--SELECT * FROM unique_titles

-- Count and create table of retiring titles
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY count(title) DESC;

--SELECT * FROM retiring_titles

-- Deliverable 2
-- Create mentorship table
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON(e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '01-01-1965' AND '12-31-1965')
ORDER BY emp_no;

--SELECT * FROM mentorship_eligibility