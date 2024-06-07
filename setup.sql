-- Create database
DROP DATABASE IF EXISTS CarDealershipDatabase;

CREATE DATABASE IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;

-- dealerships table
CREATE TABLE `dealerships`(
    `dealership_id` int AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `address` varchar(50) NOT NULL,
    `phone` varchar(12) NOT NULL,
    PRIMARY KEY(`dealership_id`)
);

-- vehicles table
CREATE TABLE `vehicles`(
	`VIN` int NOT NULL, 
    `SOLD` varchar(9) NOT NULL, 
    PRIMARY KEY(`VIN`)
);

-- inventory table
CREATE TABLE `inventory`(
	`dealership_id` int NOT NULL,
    `VIN` int NOT NULL
);

-- sales_contracts table
CREATE TABLE `sales_contracts`(
	`sales_id` int AUTO_INCREMENT,
    `VIN` int NOT NULL,
	PRIMARY KEY (`sales_id`),
    FOREIGN KEY (`VIN`) REFERENCES vehicles(`VIN`)
);

-- lease_contracts table
CREATE TABLE `lease_contracts`(
	`lease_id` int AUTO_INCREMENT,
	`VIN` int NOT NULL,
	PRIMARY KEY (`lease_id`),
	FOREIGN KEY (`VIN`) REFERENCES vehicles(`VIN`)
);