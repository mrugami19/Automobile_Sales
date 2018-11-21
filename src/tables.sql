CREATE DATABASE CS425;
USE CS425;

CREATE TABLE CUSTOMER(
	FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    PHONE INT(10),
    CID VARCHAR(9),
    PRIMARY KEY (CID));
    
CREATE TABLE ADDRESS(
	CID VARCHAR(9),
    ST_NUM VARCHAR(10),
    ST VARCHAR(10),
    CITY VARCHAR(10),
    STATE VARCHAR(20),
    PRIMARY KEY(CID),
    FOREIGN KEY(CID) REFERENCES CUSTOMER(CID));

CREATE TABLE PHONE_NUMBER(
	CID VARCHAR(9),
    PHONE1 INT(10),
    PHONE2 INT(10),
    PRIMARY KEY(CID),
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID)
    );
	
CREATE TABLE LOGIN(
	EMAIL VARCHAR(50),
    PASS VARCHAR(50),
    PRIMARY KEY(EMAIL));
    
CREATE TABLE DEALER(
	DID VARCHAR(9),
	FNAME VARCHAR(20),
    CAPACITY INT(100),
    PRIMARY KEY(DID)
    );

CREATE TABLE EMPLOYEE(
	EID VARCHAR(9),
    FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    DID VARCHAR(9),
    PRIMARY KEY(EID),
    FOREIGN KEY(DID) REFERENCES DEALER(DID)
);

CREATE TABLE VEHICLE(
	VIN VARCHAR(9),
    DID VARCHAR(9),
    BRAND VARCHAR(10),
    MODEL VARCHAR(10),
    COLOR VARCHAR(10),
    STOCK INT(10),
    PRIMARY KEY(VIN),
    FOREIGN KEY(DID) REFERENCES DEALER(DID));
    
CREATE TABLE SALES(
	VIN VARCHAR(9),
    CID VARCHAR(9),
    DID VARCHAR(9),
    EID VARCHAR(9),
    PRIMARY KEY(VIN),
    FOREIGN KEY (VIN) REFERENCES VEHICLE(VIN),
    FOREIGN KEY (CID) REFERENCES CUSTOMER(CID),
    FOREIGN KEY (DID) REFERENCES DEALER(DID),
    FOREIGN KEY (EID) REFERENCES EMPLOYEE(EID));

