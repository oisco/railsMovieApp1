set serveroutput on;
--4.1
DECLARE v_max_deptno NUMBER;

BEGIN
	SELECT MAX(department_id) into v_max_deptno FROM departments;
	DBMS_OUTPUT.PUT_LINE('MAX department no is '||v_max_deptno);
	
END;
/