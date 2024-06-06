DROP DATABASE IF EXISTS CarDealershipDatabase;

CREATE DATABASE IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;


CREATE TABLE `dealerships`(
    `dealership_id` int AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `address` varchar(50) NOT NULL,
    `phone` varchar(12) NOT NULL,
    PRIMARY KEY(`dealership_id`)
);

CREATE TABLE `vehicles`(
	`VIN` int NOT NULL, 
    `SOLD` varchar(9) NOT NULL, 
    PRIMARY KEY(`VIN`)
);
