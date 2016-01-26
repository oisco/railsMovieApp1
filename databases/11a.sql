set serveroutput on;
DECLARE 
	v_sal employees.salary%TYPE;
	v_fname employees.first_name%TYPE;
	v_lname employees.last_name%TYPE;
	v_hiredate	employees.hire_date%TYPE;
	
	CURSOR c_emp_cur IS SELECT last_name,hire_date,salary FROM employees;
	
BEGIN	

	OPEN c_emp_cur;		
	FETCH c_emp_cur INTO v_lname,v_hiredate,v_sal;
	WHILE c_emp_cur%FOUND
	LOOP
		IF v_sal>15000 AND v_hiredate >TO_DATE('01-FEB-1988')
		THEN
			DBMS_OUTPUT.PUT_LINE('Name: '||v_lname
			||' Sallary: '||v_sal||
			' Hire Date: '||v_hiredate);
		END IF;	
		FETCH c_emp_cur INTO v_lname,v_hiredate,v_sal;
	END LOOP;
	EXCEPTION
				WHEN NO_DATA_FOUND THEN
					RAISE_APPLICATION_ERROR(-20202,
					'No employees found');
				
				WHEN OTHERS THEN
					RAISE_APPLICATION_ERROR(-20202,
					'ERROR'); 
		
	CLOSE c_emp_cur;
END;
/