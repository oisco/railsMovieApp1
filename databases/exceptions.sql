set serveroutput on;
--273
--8.1
DECLARE 
	v_ename employees.last_name%TYPE;
	v_emp_sal employees.salary%TYPE :=6000;

BEGIN
	SELECT last_name INTO v_ename FROM employees WHERE salary=v_emp_sal;
	
	INSERT INTO messages(results)VALUES(v_ename);
	
	EXCEPTION
		WHEN TOO_MANY_ROWS THEN
			RAISE_APPLICATION_ERROR(-20202,
			'Too many employees');
		
			
		WHEN NO_DATA_FOUND THEN
			RAISE_APPLICATION_ERROR(-20202,
			'No employees found');
		
		WHEN OTHERS THEN
			RAISE_APPLICATION_ERROR(-20202,
			'ERROR');
		
END;
/

--8.2
DECLARE e_childrecord_exists EXCEPTION;
		PRAGMA EXCEPTION_INIT(e_childrecord_exists,-2292);

BEGIN
	DBMS_OUTPUT.PUT_LINE('Deleting department 40...');
	DELETE FROM departments WHERE department_id=40;
	
	EXCEPTION
		WHEN e_childrecord_exists THEN
				DBMS_OUTPUT.PUT_LINE('Child record exists...');
				
END;
/

		