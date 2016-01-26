drop table LOCATION;
CREATE TABLE LOCATION(
locationID	number PRIMARY KEY ,
buildingNo			number	NOT NULL,
streetName		varchar(255)NOT NULL,
postCode		varchar(255) NOT NULL,
province	varchar(255) NOT NULL,
countryCode		number NOT NULL
);