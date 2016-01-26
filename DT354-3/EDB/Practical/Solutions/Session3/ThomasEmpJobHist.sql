select E.employee_id, E.first_name, E.last_name, J.job_title, JH.start_date, JH.end_date, JH.job_id AS previous_job
FROM employees E, jobs J, job_history JH
WHERE E.job_id = J.job_id AND JH.employee_id = E.employee_id
UNION
SELECT E.employee_id, E.first_name, E.last_name, J.job_title, null AS start_date, null AS end_date, null AS previous_job
FROM employees E, jobs J
WHERE E.job_id = J.job_ID;





Matching the SELECT statement
There may be the scenarios where the compound SELECT statements may have different count and data type of selected columns.
Therefore, to match the column list explicitly, NULL columns are inserted at the missing positions so as match the count 
and data type of selected columns in each SELECT statement. For number columns, zero can also be substituted to match the type of the columns selected in the query.

In the below query, the data type of employee name (varchar2) and location id (number) do not match. Therefore,
execution of the below query would raise error due to compatibility issue.



SELECT DEPARTMENT_ID "Dept", first_name "Employee"
FROM employees
UNION
SELECT DEPARTMENT_ID, LOCATION_ID
FROM departments;

ERROR at line 1:
ORA-01790: expression must have same datatype as corresponding expression
Explicitly, columns can be matched by substituting NULL for location id and Employee name.





SELECT DEPARTMENT_ID "Dept", first_name "Employee", NULL "Location"
FROM employees
UNION
SELECT DEPARTMENT_ID, NULL "Employee", LOCATION_ID
FROM departments;