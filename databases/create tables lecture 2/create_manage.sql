drop table MANAGER cascade constraints;
CREATE TABLE MANAGER(
managerID number PRIMARY KEY ,
employeeID number,
emailAdress varchar(255) NOT NULL,
jobID		number ,
firstName	varchar(255) NOT NULL,
lastName	varchar(255) NOT NULL,
FOREIGN KEY(jobID) REFERENCES JOB(jobID)
 );
 
 /*
 FOREIGN KEY (employeeID) REFERENCES EMPLOYEE(employeeID)
 */