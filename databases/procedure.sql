
set serveroutput on;
CREATE TABLE dept AS SELECT * FROM departments;
CREATE OR REPLACE PROCEDURE add_dept IS
v_dept_id dept.department_id%TYPE;
v_dept_name dept.department_name%TYPE;
BEGIN
	v_dept_id:=280;
	v_dept_name:='ST-Curriculum';
	INSERT INTO dept(department_id,department_name)VALUES(v_dept_id,v_dept_name);
	DBMS_OUTPUT.PUT_LINE('inserted '|| SQL%ROWCOUNT ||' row');
END;
/