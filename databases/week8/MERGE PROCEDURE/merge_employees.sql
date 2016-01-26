--CREATE TABLE compy_emp AS SELECT * FROM employees;
BEGIN 
MERGE INTO copy_emp c 
	USING employees e
	ON (e.employee_id=c.employee_id)
	WHEN MATCHED THEN
	UPDATE SET 
		c.first_name	=e.first_name,
		c.last_name		=e.last_name,
		c.email			=e.email,
		c.phone_number	=e.phone_number,
		c.hire_date		=e.hire_date,
		c.job_id		=e.job_id,
		c.salary		=e.salary,
		c.commission_pct=e.commission_pct,
		c.manager_id	=e.manager_id,
		c.department_id	=e.department_id
	WHEN NOT MATCHED THEN
	INSERT VALUES(e.employee_id, e.first_name, e.last_name,
	e.email, e.phone_number, e.hire_date, e.job_id,
	e.salary, e.commission_pct, e.manager_id,
	e.department_id);
END;
/

 insert into employees(last_name,email,hire_date,job_id)
	values(
	'JONES',
	'jones@gmail.com',
	to_date('11-MAY-1995','dd-mon-yyyy'),
	101);