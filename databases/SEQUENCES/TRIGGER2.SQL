
--CREATE a trigger for employee_id
CREATE OR REPLACE TRIGGER trigger_name 
before INSERT  ON EMPLOYEES FOR EACH ROW
BEGIN 
	raise_application_error (
         -20001, ' Please notify'+select manager_id from employees+'of this insert'
         );
END;
/

