
set serveroutput on;
/*
CREATE OR REPLACE FUNCTION check_sal(p_empno EMPLOYEES.EMPLOYEE_ID%TYPE) RETURN BOOLEAN IS
v_dept_id dept.department_id%TYPE;
v_empno employees.employee_id%TYPE;
v_sal employees.salary%TYPE; 
v_avgsal employees.salary%TYPE;
BEGIN
	--v_empno:=205;
	SELECT salary,department_id INTO v_sal,v_dept_id FROM employees
	WHERE employee_id=p_empno;
	SELECT avg(salary) INTO v_avgsal FROM employees WHERE
	department_id=v_dept_id;
	DBMS_OUTPUT.PUT_LINE('checking employee with id :'||p_empno);
	if v_sal>v_avgsal THEN
		RETURN TRUE;
	ELSE
		RETURN FALSE;
	END IF;
	EXCEPTION
		when NO_DATA_FOUND THEN
		RETURN NULL;
	
END;
/
*/
--invoke
BEGIN
	IF(check_sal(205) IS NULL)THEN
	DBMS_OUTPUT.PUT_LINE('THE FUNCTION RETURNED NULL DUE TO AN EXCEPTION');
	ELSIF (check_sal(205)) THEN
	DBMS_OUTPUT.PUT_LINE('Salary>average');
	else
	DBMS_OUTPUT.PUT_LINE('Salary < average');
	end if;
END;
/
