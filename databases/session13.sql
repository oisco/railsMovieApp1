CREATE OR REPLACE PROCEDURE add_new_emp IS
v_fname employees.first_name%TYPE :='Oisin';
v_last_name employees.last_name%TYPE:='Coburn';
v_job_id jobs.job_id%TYPE:='PR_REP';
v_email employees.email%TYPE:='test@test.com';

BEGIN
	INSERT INTO employees(first_name,last_name,job_id,email,hire_date)VALUES(v_fname,v_last_name,v_job_id,v_email,sysdate);
END add_new_emp;
/