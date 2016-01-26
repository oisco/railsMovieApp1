DROP TABLE DEPARTMENT;
CREATE TABLE DEPARTMENT(
departmentID	number PRIMARY KEY ,
locationID		number ,
description		varchar(255) NOT NULL,
FOREIGN KEY (locationID) REFERENCES LOCATION(locationID)
);