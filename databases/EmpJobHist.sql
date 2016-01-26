/*1.	Write a select statement that will retrieve all employees’ id, first_name, last_name, 
job_title and job_history. Save this in a script file called EmpJobHist.sql
*/

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






  