/* 3.	Create another view called emp_dept_loc_view
 that will display the location – city, of
 every department – department_name and all employees – first_name and last_name
 that work in that department. Again save this in a script file called emp_dept_loc_view.sql */
 
CREATE OR REPLACE VIEW emp_dept_loc_view AS 
 SELECT l.city, d.department_name,e.first_name ,e.last_name
 FROM departments d,employees e, locations l
 WHERE 
	 d.location_id=l.location_id
	 AND e.department_id =d.department_id
	 order by city;