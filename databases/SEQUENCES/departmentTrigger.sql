 Create or replace trigger update_department_seq 
BEFORE INSERT ON DEPARTMENTS  for each row
   BEGIN
       if (:new.department_id is not null) then		   
         raise_application_error (
         -20001, 'I supply the keys, not you'
         );
	  end if;
      select departments_seq.nextval into :new.department_id from dual;
   END;   
/
/*
 insert into departments(department_id,department_name,manager_id,location_id)
 values('','deptname',124,3100);
*/


