# Get all dealerships #
-- SELECT * FROM dealerships;

# Find all vehicles for a specific dealership #
-- SELECT * FROM inventory WHERE dealership_id = 1;

# Find a car by VIN #
-- SELECT * FROM vehicles WHERE VIN = 100000027;

# Find the dealership where a certain car is located by VIN
-- SELECT * FROM inventory WHERE VIN = 100000027;

# Find all dealerships that have a certain car type #
-- SELECT d.*, v.make, v.model, v.color FROM dealerships AS d
-- INNER JOIN inventory AS i 
	-- ON d.dealership_id = i.dealership_id
-- INNER JOIN vehicles AS v 
	-- ON i.VIN = v.VIN
-- WHERE v.make LIKE 'Subaru' AND v.model LIKE 'WRX';

# Get all sales information for a specific dealer for a specific date range #
SELECT s.sales_id, s.VIN, s.sales_date, d.dealership_id, d.name AS dealership_name, v.make, v.model, v.color
FROM sales_contracts AS s
JOIN vehicles v ON s.VIN = v.VIN
JOIN inventory i ON v.VIN = i.VIN
JOIN dealerships d ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 2
AND s.sales_date BETWEEN '2024-06-01' AND '2024-06-10'
UNION
SELECT l.lease_id, l.VIN, l.lease_date, d.dealership_id, d.name AS dealership_name, v.make, v.model, v.color
FROM lease_contracts l
JOIN vehicles v ON l.VIN = v.VIN
JOIN inventory i ON v.VIN = i.VIN
JOIN dealerships d ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 1
AND l.lease_date BETWEEN '2024-06-01' AND '2024-06-10';


