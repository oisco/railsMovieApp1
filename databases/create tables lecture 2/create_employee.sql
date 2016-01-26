CREATE TABLE EMPLOYEE(
employeeID  number PRIMARY KEY ,
emailAdress varchar(255) NOT NULL,
jobID		number ,
managerID number ,
firstName	varchar(255) NOT NULL,
lastName	varchar(255) NOT NULL,
FOREIGN KEY (managerID) REFERENCES MANAGER(managerID),
FOREIGN KEY (jobID) REFERENCES JOB(jobID)
);