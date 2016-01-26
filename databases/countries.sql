set serveroutput on;

DECLARE
	v_country_rec 	countries%ROWTYPE;
	v_country_id	VARCHAR(2):='CA';
	
BEGIN
	select country_id,country_name,region_id 
	INTO  v_country_rec FROM countries
	WHERE country_id=v_country_id;

		DBMS_OUTPUT.PUT_LINE('Country ID: '||v_country_rec.country_id);
		DBMS_OUTPUT.PUT_LINE('Country Name: '||v_country_rec.country_name);
		DBMS_OUTPUT.PUT_LINE('Region: '|| v_country_rec.region_id);
		
END;
/
