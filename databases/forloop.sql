DECLARE
	v_country_id	locations.country_id%TYPE :='CA';
	v_loc_id		locations.location_id%TYPE;
	v_counter		NUMBER(2) :=1;
	v_new_city		locations.city%TYPE :='Montreal';
	
BEGIN
	SELECT MAX(location_id) INTO v_loc_id FROM locations
	WHERE country_id=v_country_id;
	FOR i IN 1..3 lOOP
		INSERT INTO locations(location_id,city,country_id)
		VALUES((v_loc_id+i),v_new_city,v_country_id);
	END LOOP;
END;
/