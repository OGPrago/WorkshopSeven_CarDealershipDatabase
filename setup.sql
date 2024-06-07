# Create database #
DROP DATABASE IF EXISTS CarDealershipDatabase;

CREATE DATABASE IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;

# Create Tables #
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
    `make` varchar(50) NOT NULL,
    `model` varchar(50) NOT NULL,
    `color` varchar(12) NOT NULL,
    `SOLD` varchar(3) NOT NULL, 
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

# Insert Data #
-- dealerships data
INSERT INTO dealerships(name, address, phone)
	VALUES
		('Auto World', '123 Main St', '555-123-4567'),
		('Car Nation', '456 Elm St', '555-234-5678'),
		('Luxury Rides', '789 Oak St', '555-345-6789'),
		('Economy Motors', '101 Pine St', '555-456-7890'),
		('City Cars', '202 Maple St', '555-567-8901'),
		('Rural Autos', '303 Birch St', '555-678-9012'),
		('Suburban Wheels', '404 Cedar St', '555-789-0123'),
		('Urban Motors', '505 Spruce St', '555-890-1234'),
		('Highway Autos', '606 Aspen St', '555-901-2345'),
		('Country Cars', '707 Walnut St', '555-012-3456');
        
-- vehicles data
INSERT INTO vehicles (VIN, make, model, color, SOLD)
VALUES
    (100000001, 'Toyota', 'Camry', 'Red', 'NO'),
    (100000002, 'Honda', 'Civic', 'Blue', 'YES'),
    (100000003, 'Ford', 'Mustang', 'Green', 'NO'),
    (100000004, 'Chevrolet', 'Malibu', 'Black', 'YES'),
    (100000005, 'Nissan', 'Altima', 'White', 'NO'),
    (100000006, 'Hyundai', 'Elantra', 'Silver', 'YES'),
    (100000007, 'Kia', 'Soul', 'Yellow', 'NO'),
    (100000008, 'Mazda', '3', 'Blue', 'YES'),
    (100000009, 'Volkswagen', 'Jetta', 'Black', 'NO'),
    (100000010, 'Subaru', 'Impreza', 'White', 'YES'),
    (100000011, 'BMW', '3 Series', 'Red', 'NO'),
    (100000012, 'Mercedes', 'C Class', 'Silver', 'YES'),
    (100000013, 'Audi', 'A4', 'Black', 'NO'),
    (100000014, 'Lexus', 'ES', 'White', 'YES'),
    (100000015, 'Tesla', 'Model 3', 'Blue', 'NO'),
    (100000016, 'Jaguar', 'XE', 'Black', 'YES'),
    (100000017, 'Porsche', '911', 'Red', 'NO'),
    (100000018, 'Land Rover', 'Range Rover', 'White', 'YES'),
    (100000019, 'Volvo', 'S60', 'Silver', 'NO'),
    (100000020, 'Ferrari', '488', 'Red', 'YES'),
    (100000021, 'Lamborghini', 'Huracan', 'Green', 'NO'),
    (100000022, 'McLaren', '720S', 'Orange', 'YES'),
    (100000023, 'Aston Martin', 'DB11', 'Black', 'NO'),
    (100000024, 'Bentley', 'Continental', 'White', 'YES'),
    (100000025, 'Rolls-Royce', 'Ghost', 'Silver', 'NO'),
    (100000026, 'Bugatti', 'Chiron', 'Blue', 'YES'),
    (100000027, 'Pagani', 'Huayra', 'Yellow', 'NO'),
    (100000028, 'Koenigsegg', 'Agera', 'Red', 'YES'),
    (100000029, 'Ford', 'Focus', 'Blue', 'NO'),
    (100000030, 'Chevrolet', 'Cruze', 'Silver', 'YES'),
    (100000031, 'Toyota', 'Corolla', 'Black', 'NO'),
    (100000032, 'Honda', 'Accord', 'White', 'YES'),
    (100000033, 'Nissan', 'Sentra', 'Blue', 'NO'),
    (100000034, 'Hyundai', 'Sonata', 'Black', 'YES'),
    (100000035, 'Kia', 'Optima', 'White', 'NO'),
    (100000036, 'Mazda', '6', 'Red', 'YES'),
    (100000037, 'Volkswagen', 'Passat', 'Silver', 'NO'),
    (100000038, 'Subaru', 'Legacy', 'Blue', 'YES'),
    (100000039, 'BMW', '5 Series', 'Black', 'NO'),
    (100000040, 'Mercedes', 'E Class', 'White', 'YES'),
    (100000041, 'Audi', 'A6', 'Silver', 'NO'),
    (100000042, 'Lexus', 'GS', 'Blue', 'YES'),
    (100000043, 'Tesla', 'Model S', 'Black', 'NO'),
    (100000044, 'Jaguar', 'XF', 'White', 'YES'),
    (100000045, 'Porsche', 'Panamera', 'Red', 'NO'),
    (100000046, 'Land Rover', 'Discovery', 'Silver', 'YES'),
    (100000047, 'Volvo', 'XC90', 'Blue', 'NO'),
    (100000048, 'Ferrari', 'Portofino', 'Black', 'YES'),
    (100000049, 'Lamborghini', 'Aventador', 'Yellow', 'NO'),
    (100000050, 'McLaren', 'Senna', 'Orange', 'YES');
    
-- inventory data
INSERT INTO inventory (dealership_id, VIN)
VALUES
    (1, 100000001),
    (1, 100000002),
    (2, 100000003),
    (2, 100000004),
    (3, 100000005),
    (3, 100000006),
    (4, 100000007),
    (4, 100000008),
    (5, 100000009),
    (5, 100000010),
    (6, 100000011),
    (6, 100000012),
    (7, 100000013),
    (7, 100000014),
    (8, 100000015),
    (8, 100000016),
    (9, 100000017),
    (9, 100000018),
    (10, 100000019),
    (10, 100000020),
    (1, 100000021),
    (1, 100000022),
    (2, 100000023),
    (2, 100000024),
    (3, 100000025),
    (3, 100000026),
    (4, 100000027),
    (4, 100000028),
    (5, 100000029),
    (5, 100000030),
    (6, 100000031),
    (6, 100000032),
    (7, 100000033),
    (7, 100000034),
    (8, 100000035),
    (8, 100000036),
    (9, 100000037),
    (9, 100000038),
    (10, 100000039),
    (10, 100000040),
    (1, 100000041),
    (1, 100000042),
    (2, 100000043),
    (2, 100000044),
    (3, 100000045),
    (3, 100000046),
    (4, 100000047),
    (4, 100000048),
    (5, 100000049),
    (5, 100000050);

-- sales_contracts data
INSERT INTO sales_contracts (VIN)
VALUES
    (100000001),
    (100000003),
    (100000005),
    (100000007),
    (100000009),
    (100000011),
    (100000013),
    (100000015),
    (100000017),
    (100000019),
    (100000021),
    (100000023),
    (100000025),
    (100000027),
    (100000029),
    (100000031),
    (100000033),
    (100000035),
    (100000037),
    (100000039);

    
-- lease_contracts data
INSERT INTO lease_contracts (VIN)
VALUES
    (100000001),
    (100000003),
    (100000005),
    (100000007),
    (100000009),
    (100000011),
    (100000013),
    (100000015),
    (100000017),
    (100000019),
    (100000021),
    (100000023),
    (100000025),
    (100000027),
    (100000029),
    (100000031),
    (100000033),
    (100000035),
    (100000037),
    (100000039);