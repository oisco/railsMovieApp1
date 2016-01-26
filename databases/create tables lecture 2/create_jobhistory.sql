DROP TABLE JOB_HISTORY;
CREATE TABLE JOB_HISTORY(
jobHistoryId	number PRIMARY KEY,
jobID			number ,
employeeID		number ,
departmentID	number ,
startDate		date NOT NULL,
endDate 		date NOT NULL,
FOREIGN KEY (jobID) REFERENCES JOB(jobID),
FOREIGN KEY (employeeID) REFERENCES EMPLOYEE(employeeID),
FOREIGN KEY (departmentID) REFERENCES DEPARTMENT(departmentID)
);