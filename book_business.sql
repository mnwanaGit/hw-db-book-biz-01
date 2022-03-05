DROP DATABASE IF EXISTS `bookbusy`;
CREATE DATABASE IF NOT EXISTS `bookbusy`; 
USE `bookbusy`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- AUTO_INCREMENT


--  TABLE AUTHORS

CREATE TABLE `Authors` (
	`AuthorID` 			int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (20) NOT NULL,
	`LastName` 			varchar (20) NOT NULL,	
  	PRIMARY KEY (`AuthorID`),	
	INDEX `AuthorID` (`AuthorID` ASC),
	INDEX `LastName` (`LastName` ASC),
	INDEX `FirstName` (`FirstName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


--  TABLE PUBLISHERS

CREATE TABLE `Publishers` (
	`PublisherID` 		int NOT NULL AUTO_INCREMENT,
	`PublisherName` 	varchar (20) NOT NULL,
	`Royalties` 		float NULL,
  	PRIMARY KEY (`PublisherID`),	
	INDEX `PublisherID` (`PublisherID` ASC),
	INDEX `Name` (`PublisherName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

--  TABLE EDITORS

CREATE TABLE `Editors` (
    `EditorID`            int NOT NULL AUTO_INCREMENT,
    `FirstName`           varchar (60) NULL,
    `LastName`   		  varchar (60) NULL,
    PRIMARY KEY (`EditorID`), 
    INDEX `EditorID` (`EditorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

--  TABLE CUSTOMERS

CREATE TABLE `Customers`(
	`CustomerID`		int NOT NULL,
	`CustomerFirstName` varchar(50) NULL,
    `CustomerLastName`  varchar(50) NULL,
    PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

--  TABLE BOOKS

CREATE TABLE `Books` (
	`BookID` 			int NOT NULL AUTO_INCREMENT,
	`Title` 			varchar (20) NOT NULL,
	`Genre` 			varchar (20) NOT NULL,	
    `Price`				float NULL,
	`Editor1ID` 		int NOT NULL ,
    `Editor2ID` 		int NULL ,
    `Editor3ID` 		int NULL ,
	`Author1ID` 		int NOT NULL,	
    `Author2ID` 		int NULL,
    `Author3ID` 		int NULL,
    `PublisherID`    	int NOT NULL ,
  	PRIMARY KEY (`BookID`),
    INDEX `Title` (`Title` ASC),
    	FOREIGN KEY (`Author1ID`) REFERENCES `Authors` (`AuthorID`),
	FOREIGN KEY (`Author2ID`) REFERENCES `Authors` (`AuthorID`),
	FOREIGN KEY (`Author3ID`) REFERENCES `Authors` (`AuthorID`),
	FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`),
    FOREIGN KEY (`Editor1ID`) REFERENCES `Editors` (`EditorID`),
	FOREIGN KEY (`Editor2ID`) REFERENCES `Editors` (`EditorID`),
    FOREIGN KEY (`Editor3ID`) REFERENCES `Editors` (`EditorID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

--  TABLE ORDERS

CREATE TABLE `Orders` (
    `BookOrderID`		int NOT NULL,
    `OrderID`        int NOT NULL,
	`CustomerID`		int NOT NULL,
    `BookID`            int NOT NULL,
    PRIMARY KEY (`BookOrderID`),
    INDEX `BookOrderID` (`BookOrderID` ASC),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`),
	FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;