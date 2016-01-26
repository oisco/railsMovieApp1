/*
2.	Convert this select statement into a view called emp_job_view.
 Again save this in a script file called emp_job_view.sql
*/
 CREATE OR REPLACE VIEW emp_job_view AS 
 SELECT e.employee_id, e.last_name, e.first_name, j.job_title 
FROM employees e
JOIN jobs j
JOIN job_history jh
ON jh.job_id = j.job_id
ON jh.employee_id = e.employee_id
UNION ALL
SELECT e.employee_id, e.last_name, e.first_name, j.job_title 
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id
Order by employee_id;
