REMARK   Format some columns
TTITLE 'Countries Various Locations'
SET PAGESIZE 36
COLUMN lid     FORMAT 99999 HEADING 'Location|ID'
COLUMN city FORMAT A25   HEADING 'City'
COLUMN state_province   FORMAT A10   HEADING 'State|Province'
COLUMN country_id   FORMAT A12   HEADING 'Country|ID'
COLUMN country_name   FORMAT A14   HEADING 'Country|Name'

select l.location_id,l.city,l.state_province,c.country_id,c.country_name
from locations l,countries c
where l.country_id=c.country_id;