drop table WAREHOUSE;
CREATE TABLE WAREHOUSE(
warehouseID	number PRIMARY KEY ,
locationID number,
FOREIGN KEY (locationID) REFERENCES LOCATION(locationID) 
);