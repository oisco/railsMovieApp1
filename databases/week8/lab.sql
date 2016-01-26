set serveroutput on;
/*
--4.1
DECLARE v_max_deptno NUMBER;

BEGIN
	SELECT MAX(department_id) into v_max_deptno FROM departments;
	DBMS_OUTPUT.PUT_LINE('MAX department no is '||v_max_deptno);
	
END;
/
*/
--4.2
DECLARE v_max_deptno NUMBER;
		v_dept_id NUMBER;
		v_dept_name VARCHAR(30);
		
BEGIN
	 v_dept_name:='Education';
	 
	SELECT MAX(department_id) into v_max_deptno FROM departments;
	DBMS_OUTPUT.PUT_LINE('MAX department no is '||v_max_deptno);
	
	v_dept_id:=v_max_deptno+10;
	
	INSERT INTO departments(department_id,department_name,location_id)
				VALUES('',v_dept_name,'');
	
	DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' rows affected by this insert.');
	
	SELECT * FROM departments WHERE department_name=v_dept_name;

END;
/

