--create a trigger for location_id 
 Create or replace trigger update_locations_seq 
BEFORE INSERT ON locations  for each row
   BEGIN
       if (:new.location_id is not null) then		   
         raise_application_error (
         -20001, 'I supply the keys, not you'
         );
	  end if;
      select locations_seq.nextval into :new.location_id from dual;
   END;   
/

/*
insert into Locations(location_id,Country_id)
values (1,'ZW');
*/