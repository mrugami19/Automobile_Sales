CREATE DATABASE CS425;
USE CS425;

CREATE TABLE CUSTOMER(
	CID INT(9) NOT NULL auto_increment,
	FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    GENDER VARCHAR(10),
    INCOME INT(15),
    PHONE VARCHAR(10),
    EMAIL VARCHAR(50),
    PASS VARCHAR(50),
    PRIMARY KEY (CID),
    ST_NUM VARCHAR(10),
    ST VARCHAR(10),
    CITY VARCHAR(10),
    STATE VARCHAR(20)
);


    
CREATE TABLE DEALER(
	DID INT(9),
	FNAME VARCHAR(20),
    CAPACITY INT(100),
    PRIMARY KEY(DID)
    );

CREATE TABLE EMPLOYEE(
	EID INT(9) NOT NULL AUTO_INCREMENT,
    FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    DID INT(9),
	EMAIL VARCHAR(50),
    PASS VARCHAR(50),
    PRIMARY KEY(EID),
    FOREIGN KEY(DID) REFERENCES DEALER(DID)
);


CREATE TABLE VEHICLE(
	VIN INT(9) NOT NULL AUTO_INCREMENT,
    DID INT(9),
    BRAND VARCHAR(10),
    MODEL VARCHAR(10),
    COLOR VARCHAR(10),
    PRIMARY KEY(VIN),
    FOREIGN KEY(DID) REFERENCES DEALER(DID));
    
CREATE TABLE SALES(
	VIN INT(9),
    CID INT(9),
    DID INT(9),
    EID INT(9),
    DOS DATE,
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
DROP TABLE DEALER;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

GRANT ALL PRIVILEGES ON CS425.* TO 'root'@'localhost';

