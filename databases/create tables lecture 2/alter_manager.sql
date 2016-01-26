--alter manager to ensure employeeID column references EMPLOYEE table
ALTER TABLE MANAGER
ADD CONSTRAINT FK_MANAGERTOEMPLOYEEID FOREIGN KEY (employeeID)
    REFERENCES EMPLOYEE(employeeID);