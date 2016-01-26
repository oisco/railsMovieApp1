CREATE or replace VIEW emp_job_thomas_view AS
select E.employee_id, E.first_name, E.last_name, J.job_title, JH.start_date, JH.end_date, JH.job_id AS previous_job
FROM employees E, jobs J, job_history JH
WHERE E.job_id = J.job_id AND JH.employee_id = E.employee_id
UNION
SELECT E.employee_id, E.first_name, E.last_name, J.job_title, null AS start_date, null AS end_date, null AS previous_job
FROM employees E, jobs J
WHERE E.job_id = J.job_ID;