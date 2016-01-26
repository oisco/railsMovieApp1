
--CREATE a trigger for employee_id
 Create or replace trigger update_employee_seq 
BEFORE INSERT ON Employees  for each row
   BEGIN
       if (:new.employee_id is not null) then		   
         raise_application_error (
         -20001, 'I supply the keys, not you'
         );
	  end if;
      select employees_seq.nextval into :new.employee_id from dual;
   END;   
/


/*
insert into employees(EMPLOYEE_ID,JOB_ID,MANAGER_ID,DEPARTMENT_ID)
VALUES(1,'PR_REP',124,270);
*/