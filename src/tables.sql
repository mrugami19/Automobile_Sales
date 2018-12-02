CREATE DATABASE CS425;
USE CS425;

CREATE TABLE CUSTOMER(
	CID INT(9) NOT NULL auto_increment,
	FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    PHONE INT(10),
    EMAIL VARCHAR(50),
    PASS VARCHAR(50),
    PRIMARY KEY (CID),
    ST_NUM VARCHAR(10),
    ST VARCHAR(10),
    CITY VARCHAR(10),
    STATE VARCHAR(20)
);


    
CREATE TABLE DEALER(
	DID VARCHAR(9),
	FNAME VARCHAR(20),
    CAPACITY INT(100),
    PRIMARY KEY(DID)
    );

CREATE TABLE EMPLOYEE(
	EID INT(9) NOT NULL AUTO_INCREMENT,
    FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    DID VARCHAR(9),
	EMAIL VARCHAR(50),
    PASS VARCHAR(50),
    PRIMARY KEY(EID),
    FOREIGN KEY(DID) REFERENCES DEALER(DID)
);


CREATE TABLE VEHICLE(
	VIN INT(9) NOT NULL AUTO_INCREMENT,
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
    
DROP TABLE SALES;
DROP TABLE ADDRESS;
DROP TABLE VEHICLE;
DROP TABLE EMPLOYEE;
DROP TABLE CUSTOMER; 
DROP TABLE ADDRESS;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

GRANT ALL PRIVILEGES ON CS425.* TO 'root'@'localhost';

